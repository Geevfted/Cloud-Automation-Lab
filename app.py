from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/webhook', methods=['POST'])
def handle_lead():
    data = request.json
    email = data.get("email", "")
    name = data.get("name", "Unknown")

    if email.endswith(".gov") or email.endswith(".edu"):
        priority = "HIGH - Enterprise Lead"
    else:
        priority = "STANDARD"

    print(f"✅ Received from Automation: {name} ({email}) -> {priority}")
    return jsonify({"status": "success", "assigned_priority": priority}), 200

if __name__ == "__main__":
    # The host="0.0.0.0" is the bridge that lets your laptop talk to Docker
    app.run(host="0.0.0.0", port=5000)
