# CoreWeave Virtual Machine Manger

This repository contains the CoreWeave Virtual Machine Manager, a PowerShell based tool leveraging `Kubectl` and `Virtctl` to manage instances on CoreWeave Cloud.

![image](https://user-images.githubusercontent.com/80500072/123692715-2620b780-d825-11eb-9720-243e1a59bb9a.png)

## Getting Started

During initial launch of the tool, you'll be prompted to perform three tasks: 

### 1. Load your `Kubeconfig` file:

![image](https://user-images.githubusercontent.com/80500072/123693260-d7275200-d825-11eb-95fd-05067f305ed6.png)

Selecting "Yes" will allow you to locate your config file and import it:

![image](https://user-images.githubusercontent.com/80500072/123693398-fd4cf200-d825-11eb-9f97-5e443926ae53.png)

### 2. Download [Kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl-windows)

>CoreWeave Virtual Machine Manager uses `Kubectl` under the hood to communicate with the cloud

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

![image](https://user-images.githubusercontent.com/80500072/123695435-8a914600-d828-11eb-99b3-ee8e7474708c.png)

### Connect via VNC

Connecting to an instance via VNC creates a local proxy with `Virtctl`:

![image](https://user-images.githubusercontent.com/80500072/123695927-29b63d80-d829-11eb-9063-338b065f5c64.png)

The local proxy can be connected to with any VNC Viewer, such as [RealVNC](https://www.realvnc.com/en/connect/download/viewer/)

![image](https://user-images.githubusercontent.com/80500072/123696148-6b46e880-d829-11eb-91a4-f1b15f5efe97.png)

Selecting "Ok" at the VNC Connection prompt will terminate the VNC connection proxy.

### Deploy a VS

![2021-09-18 23-06-57](https://user-images.githubusercontent.com/80500072/133914588-f9b76069-271f-4be8-b49e-a0b10ccb7cc7.gif)

