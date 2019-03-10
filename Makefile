deploy:
	$(MAKE) -C go build
	sudo service supervisord restart && sudo service nginx restart
.PHONY: deploy

NUM=1
bench:
	sudo isucon3 test --workload $(NUM)
.PHONY: benth
