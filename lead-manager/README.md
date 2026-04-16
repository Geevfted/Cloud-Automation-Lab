# Project 2: Dockerized Lead Management Webhook

### **Overview**
This project handles business leads using Python and Docker. It is designed to work as a logic bridge for automation tools like Zapier and Make.com.

### **What this does**
1. **Receives Data:** Listens for webhook data from lead forms.
2. **Evaluation:** Automatically checks if the lead is high priority (e.g., .gov or .edu emails).
3. **Response:** Returns a JSON success signal to the automation platform.

### **Technical Setup**
* Built with **Python (Flask)**.
* Containerized with **Docker** for easy deployment.
