deploy:
	$(MAKE) -C go build
	sudo service supervisord restart
	sudo service httpd restart
.PHONY: deploy

bench:
	sudo isucon3 test --workload 1
.PHONY: benth