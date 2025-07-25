import json
import subprocess

# Proper variable name
machine_names = ["Jenkins", "Nexus", "SonarQube", "GitLab", "Artifactory"]

# Get Terraform output
result = subprocess.run(["terraform", "output", "-json"], capture_output=True, text=True)
data = json.loads(result.stdout)

# Get IPs safely
if "ec2_public_ips" in data:
    ips = data["ec2_public_ips"]["value"][0]  # Flatten the nested list
    pem_path = "/home/muthu/Desktop/KKPG/my-key.pem"

    with open("inventory.ini", "w") as f:
        for name, ip in zip(machine_names, ips):
            f.write(f"[{name.lower()}]\n")  # lowercase for Ansible group naming convention
            f.write(f"{ip} ansible_user=ec2-user ansible_ssh_private_key_file={pem_path}\n\n")

    print("✅ Inventory file created as 'inventory.ini'.")
else:
    print("❌ Error: 'ec2_public_ips' not found in terraform output.")
