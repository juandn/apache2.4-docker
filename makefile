run:
	docker run --rm -d --name apache2.4-test -p 8080:80 -p 8443:443 -v ${PWD}/htdocs/:/usr/local/apache2/htdocs/ \
														-v ${PWD}/vhosts/:/usr/local/apache2/vhosts/ \
	                                                    -v ${PWD}/my-httpd.conf:/usr/local/apache2/conf/httpd.conf \
														-v ${PWD}/certs:/usr/local/apache2/conf/certs \
														-v ${PWD}/logs/:/usr/local/apache2/logs/ httpd:2.4
stop:
	docker stop apache2.4-test 
restart:
	docker stop apache2.4-test
	docker run --rm -d --name apache2.4-test -p 8080:80 -p 8443:443 -v ${PWD}/htdocs/:/usr/local/apache2/htdocs/ \
														-v ${PWD}/vhosts/:/usr/local/apache2/vhosts/ \
	                                                    -v ${PWD}/my-httpd.conf:/usr/local/apache2/conf/httpd.conf \
														-v ${PWD}/certs:/usr/local/apache2/conf/certs \
														-v ${PWD}/logs/:/usr/local/apache2/logs/ httpd:2.4