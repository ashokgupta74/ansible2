.SILENT:
INVENTORY_FILE := hosts
VER := 1.1

help:
	echo "Options:"
	echo "  deps      Install dependencies from ansible-galaxy (stored in requirements.yml)"
	echo "  lshosts   list all hosts ansible controls"
	echo "  test      run tests"

deps:
	ansible-galaxy -c install --roles-path roles -r requirements.yml

lshosts:
	# list all hosts in ansible inventory
	sed '/\[.*/q' $(INVENTORY_FILE) | grep -v '^\s*[\[#].*' | sed '/^\s*$$/d' | sed 's/#.*//' | sed 's/ *$$//' | awk '{ print $$1 }'

test:
	find ./ -maxdepth 1 -name '*.yml' | egrep -v 'requirements.yml|circle.yml' | xargs -n1 ansible-playbook -i ./hosts --syntax-check --list-tasks
