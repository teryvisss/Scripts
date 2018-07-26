#!/usr/bin/python
import socket
ip = raw_input("Informe o IP: ")
port = input("Informe a Porta: ")
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
if s.connect_ex((ip, port)):
	print "Porta", port, "esta fechada"
else:
	print "Porta", port, "esta aberta"
