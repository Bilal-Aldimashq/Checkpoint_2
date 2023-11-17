# Exercice 1
## **Q1.1**
### **Pourquoi le ping avec les adresses IP des machines ne fonctionnent pas ?**  
L'adresse IP du serveur étant en 172.16.10.10/24 il est sur le réseau **172.16.10.0/24**;    
L'adresse du client étant 172.16.100.50/24, il est sur le réseaux **172.16.100.0/24**;  
==> Les deux machines sont sur un réseau différent et ne peuvent donc pas communiquer.

### **Rendre le ping possible entre les machines:**
- Mettre les machines sous le même réseau en changeant l'adresse IP. Pour ce cas Le client changera d'adresse en 172.16.10.10/24
  
