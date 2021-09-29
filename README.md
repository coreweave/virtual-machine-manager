# CoreWeave Virtual Machine Manger

This repository contains the CoreWeave Virtual Machine Manager, a PowerShell based tool leveraging `Kubectl` and `Virtctl` to manage instances on CoreWeave Cloud.

### Start/Stop/Restart your instances


![start_stop](https://user-images.githubusercontent.com/80500072/135183320-a278b934-7b42-4985-ba67-4bf95239afee.gif)

### Connect via VNC, Serial Console, and more


![console_vnc](https://user-images.githubusercontent.com/80500072/135183384-43060819-a487-42a1-9e5a-566a7297a305.gif)

### Deploy a new instance, or delete existing ones


![create_delete](https://user-images.githubusercontent.com/80500072/135183452-73c81bf4-42c2-476c-873a-f8d5013bf889.gif)

### Edit an existing instance


![edit](https://user-images.githubusercontent.com/80500072/135183500-ad11b582-3eef-48bc-9e5e-0722f9bcc419.gif)



## Getting Started

During initial launch of the tool, you'll be prompted to perform three tasks: 

### 1. Load your `Kubeconfig` file from [CoreWeave Cloud API Access](https://docs.coreweave.com/coreweave-kubernetes/getting-started#obtain-access-credentials):

![image](https://user-images.githubusercontent.com/80500072/123693260-d7275200-d825-11eb-95fd-05067f305ed6.png)

Selecting "Yes" will allow you to locate your config file and import it:

![image](https://user-images.githubusercontent.com/80500072/123693398-fd4cf200-d825-11eb-9f97-5e443926ae53.png)

### 2. Download [Kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl-windows)

>CoreWeave Virtual Machine Manager uses `Kubectl` under the hood to communicate with the cloud

> It's preferable to run our [Windows setup script](https://docs.coreweave.com/coreweave-kubernetes/getting-started#install-kubernetes-command-line-tools) prior to launching this tool. Doing so will ensure the prompts below will not appear.

![image](https://user-images.githubusercontent.com/80500072/123693465-18b7fd00-d826-11eb-9b27-3dcc86a7a70f.png)

Selecting "Yes" will download the latest version for you: 

![image](https://user-images.githubusercontent.com/80500072/123693825-90862780-d826-11eb-9a53-78f3efd25a0d.png)

### 3. Download [Virtctl](https://github.com/kubevirt/kubevirt/releases)

>CoreWeave Virtual Machine Manager uses `Virtctl` under the hood to communicate with the cloud

![image](https://user-images.githubusercontent.com/80500072/123693901-a3006100-d826-11eb-87ec-edf892203bfe.png)

Selecting "Yes" will download the latest version for you: 

![image](https://user-images.githubusercontent.com/80500072/123694113-e3f87580-d826-11eb-91f1-a6c62d885b7d.png)

## Usage

### Load virtual machines in your namespace

Use the "Load Virtual Machines" button to populate the datagrid with Virtual Machines: 

![image](https://user-images.githubusercontent.com/80500072/123694846-d8597e80-d827-11eb-9546-47c46b8ffa45.png)

### Interact with Virtual Machines:

Once your Virtual Machines are loaded, you may right click on any machine to start, stop, restart, or connect to it. 

Multiple machines can be highlighted at once to send commands to multiple machines: 

![image](https://user-images.githubusercontent.com/80500072/135184096-81b4a447-3622-4fea-87aa-3c0798ae32d1.png)

### Connect via VNC

Connecting to an instance via VNC creates a local proxy with `Virtctl`:

![image](https://user-images.githubusercontent.com/80500072/123695927-29b63d80-d829-11eb-9063-338b065f5c64.png)

The local proxy can be connected to with any VNC Viewer, such as [RealVNC](https://www.realvnc.com/en/connect/download/viewer/)

![image](https://user-images.githubusercontent.com/80500072/123696148-6b46e880-d829-11eb-91a4-f1b15f5efe97.png)

Selecting "Ok" at the VNC Connection prompt will terminate the VNC connection proxy.
