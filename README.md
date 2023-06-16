# DevSecOps Pipeline Experiment
Pipeline steps outlined below
- Generate a Software Bill of Materials (SBOM) in the OWASP CycloneDX format
- Upload SBOM to OWASP Dependency Track API
- Perform a CodeQL Analysis, results should appear in the GitHub Security tab
- Run the OWASP Dependency Check tool and upload results to GitHub Security tab
- Build Docker image for node.js server
- Run a Container scan and upload the results to the GitHub Security tab
- Start the server container
- Run an OWASP ZAP Scan against the running container
  - Results get uploaded to GitHub Issues since the action doesn't support the SARIF format