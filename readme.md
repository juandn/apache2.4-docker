# Apache 2.4 dockerizado 
Ejemplo de configuración para un servidor apache levantado con docker y con capacidad de configuracion.

Tiene configuracion para virtualhosts y TLS.

## Configuración

Para que el el puerto 8443:443 se levante correctamente se espera que se copie en la carpeta
certs las claves publicas y privadas de cada vhosts y se corrijan los nombres en el path de la 
definición:

```
   SSLCertificateFile "/usr/local/apache2/conf/certs/www.example.com.crt"
   SSLCertificateKeyFile "/usr/local/apache2/conf/certs/www.example.com.key"
   SSLCertificateChainFile "/usr/local/apache2/conf/certs/ca.crt"
```

También, si fuera necesario para compatibilidad con clientes que no los infieran, la ruta al
bundle con los certificados intermedios. De ejemplo esta solo el certificado de una entidad 
autofirmada de un solo nivel.

En la carpeta vhosts se pueden configurar los documentroot de cada vhost, esta carpeta se montará en 
la imagen.