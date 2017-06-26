.PHONY: package_install clean

containers = docker_r1 docker_r2 docker_r3 docker_r4 docker_r5

all: package_install package_configure

package_install:
	docker rm -f $(containers) || true
	ansible-playbook -i inventory playbook_package_install.yml

package_configure:
	docker rm -f $(containers) || true
	ansible-playbook -i inventory playbook_package_configure.yml

clean:
	docker rm -f $(containers) || true
