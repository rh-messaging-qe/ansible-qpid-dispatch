.PHONY: package_install clean
TEST_INVENTORY?=test/inventory
ANSIBLE_OPTS?=

containers = docker_r1 docker_r2 docker_r3 docker_r4 docker_r5

all: package_install package_configure

clean:
	rm -rf ansible.cfg ./build
	docker rm -f $(containers) || true

test-prepare: clean
	printf '[defaults]\nroles_path=./build/\n' >ansible.cfg
	ansible-galaxy install -f -r test/requirements.yml
	printf '[defaults]\nroles_path=./build:../\n' >ansible.cfg

package_install:
	docker rm -f $(containers) || true
	ansible-playbook $(ANSIBLE_OPTS) -i $(TEST_INVENTORY) test/playbook_package_install.yml

package_configure:
	docker rm -f $(containers) || true
	ansible-playbook $(ANSIBLE_OPTS) -i $(TEST_INVENTORY) test/playbook_package_configure.yml

test: test-prepare package_install package_configure