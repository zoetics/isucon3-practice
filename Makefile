deploy:
	$(MAKE) -C go build
	sudo service supervisord restart && sudo service nginx restart
.PHONY: deploy

bench:
	sudo isucon3 test --workload 1
.PHONY: benth
