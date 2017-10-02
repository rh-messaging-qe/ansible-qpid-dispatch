.PHONY: package_install clean
TEST_INVENTORY?=test/inventory
ANSIBLE_OPTS?=

containers = alain roland

all: package_install package_configure

clean:
	rm -rf ansible.cfg ./build
	docker rm -f $(containers) || true

test-prepare: clean
	printf '[defaults]\nroles_path=./build/\n' > ansible.cfg
	ansible-galaxy install -f -r test/requirements.yml
	printf '[defaults]\nroles_path=./build:../\n' > ansible.cfg

test: test-prepare
	ansible-playbook $(ANSIBLE_OPTS) -i $(TEST_INVENTORY) test/test.yml
	rm -rf ansible.cfg ./build
	docker rm -f $(containers) || true
