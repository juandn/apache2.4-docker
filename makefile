run:
	docker run -dit --name apache2.4-test -p 8080:81 -v ${PWD}/htdocs/:/usr/local/apache2/htdocs/ -v  ${PWD}/my-httpd.conf:/usr/local/apache2/conf/httpd.conf httpd:2.4
