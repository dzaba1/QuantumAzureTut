# QuantumAzureTut

Basic quantum code which can be pushed to Azure Quantum

## Requirements

* [Visual Studio Code](https://code.visualstudio.com/)
* [.NET SDK min 6](https://dotnet.microsoft.com/en-us/download)
* [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-windows?tabs=azure-cli#latest-version)
* [Microsoft Quantum Development Kit for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=quantum.quantum-devkit-vscode)
* Azure CLI quantum extension - `az extension add -n quantum`
* [Setup Azure Quantum resource](https://azure.microsoft.com/en-us/products/quantum)

## How to run

First test on local machine: `dotnet run`

Then push to Azure:
* `az login`
* `az account set --subscription [subscription_guid_id]`
* `az quantum workspace set --resource-group [resource_group] --workspace [azure_quantum_resource] --location [location]`
* Check quantum solution providers: `az quantum target list --output table`
* Compile and schedule job: `az quantum job submit --target-id [target] --job-name [your_job_name] -o table `
* Check job status until succeeded (or failed): `az quantum job show --output table --job-id [job_id]`
* Print output: `az quantum job output -o table --job-id [job_id]`