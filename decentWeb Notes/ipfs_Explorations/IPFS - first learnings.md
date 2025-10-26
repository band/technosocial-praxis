# IPFS - first learnings  

### 2025-09-04
- how to set up and share a directory of files
- so far: `ipfs` installed
- TODO:
	- start `daemon`
	- review configuration and security settings  
	- 
	
### 2025-09-06  
- clean up previous work and pinned CIDs  
```shell
# list pinned CIDs
ipfs pin ls
# list the recursive CIDs (often directories)
ipfs pin ls --type=recursive -q
# unpin all the recursives
ipfs pin ls --type=recursive -q | xargs -I {} ipfs pin rm {}
# run garbage collection
ipfs repo gc
```  

- remove existing `ipfs` node information:  
```shell
cd
rm -fr .ipfs
```  
- re-initialize and start the daemon:  
```shell
cd
ipfs init
# in a new Terminal window
ipfs daemon
```  
```shell
ipfs id
{
"ID": "12D3KooWAHzQGThaJFBspvtR86ctp4dHG3ShnR639WCZZbjaLHrc",
"PublicKey": "CAESIAcTppsB0c6+NO0r2C47FAEHy729YTbor11DN+gau+BF",
"Addresses": null,
"AgentVersion": "kubo/0.37.0/Homebrew",
"Protocols": null
}
```


```shell
 ipfs add -r decentwebLab 

added QmZ6TrWUG8AepdisP9Kb9sCBHGMkgX28QasYHz8xu1ioYn decentwebLab/IPFS - first learnings.md
added QmT5ZeqDH4CKEMBax9Wr1kZduGUtPNJN1KbsXDnByPJDDy decentwebLab/README.md
added QmR9mCDTGtvUmCDXu18LuNdBzEu6W4DgGo1L7rYMrgYJBb decentwebLab/philosophers-on-gpt3.md
added QmUNLLsPACCz1vLxQVkXqqLX5R1X345qqfHbsf67hvA3Nn decentwebLab/workbench
added QmZPmK62yFeqyfeMB94DSBi3HdgPD9B6e9XEfQ8Mhw31XJ decentwebLab
```

##### Published to IPNS with webui:  

CID: QmZPmK62yFeqyfeMB94DSBi3HdgPD9B6e9XEfQ8Mhw31XJ
Successfully published under the key:
self

k51qzi5uqu5dgcxt06uyhhlr3jlynz1otorikjymrj22d9491xtdva5rkbzepx

Copy the link below and share it with others. The IPNS address
will resolve as long as your node remains available on the
network once a day to refresh the IPNS record.
https://ipfs.io/ipns/k51qzi5uqu5dgcxt06uyhhlr3jlynz1otorl


https://ipfs.io/ipns/k51qzi5uqu5dgcxt06uyhhlr3jlynz1otorikjymrj22d949lxtdva5rkbzepx  
Observation: this URL does not provide a usable view  

### 2025-09-07:  
some collected notes and observations from setting up and using Pinata

- set up a pinata.cloud account
- created API keys

- uploaded “philosophers on gpt3” to Pinata
```shell
pinata upload --verbose philosophers-on-gpt3.md
Uploading philosophers-on-gpt3.md (1.04 KB)
Uploading... 100% |████████████████████████████████████████| (10 kB/s)
{
    "id": "019924f3-8717-7897-922a-1198da7aadea",
    "name": "philosophers-on-gpt3.md",
    "cid": "bafkreigvtgxxey6dv7a752wbz3bc24guklcqsu4l6ib5ibym2de2aw6pai",
    "size": 527,
    "created_at": "2025-09-07T16:12:44.390Z",
    "number_of_files": 1,
    "mime_type": "text/markdown",
    "group_id": null,
    "keyvalues": null,
    "vectorized": false,
    "network": "public"
}
pinata files list
{
    "files": [
        {
            "id": "019924f3-8717-7897-922a-1198da7aadea",
            "name": "philosophers-on-gpt3.md",
            "cid": "bafkreigvtgxxey6dv7a752wbz3bc24guklcqsu4l6ib5ibym2de2aw6pai",
            "size": 527,
            "number_of_files": 1,
            "mime_type": "text/markdown",
            "keyvalues": {},
            "created_at": "2025-09-07T16:12:44.39Z"
        }
    ],
    "next_page_token": "MjAyNS0wOS0wN1QxNjoxMjo0NC4zOSswMDowMHwwMTk5MjRmMy04NzE3LTc4OTctOTIyYS0xMTk4ZGE3YWFkZWE="
}
```  

- after making changes to philosophers-on-gpt3 re-added the changes:  
```shell
ipfs add -r decentwebLab
added QmbSYLRETZVBUctuc3PBCRVvEzdBtP3Cbfi5x3PbwTY9kk decentwebLab/IPFS - first learnings.md
added QmT5ZeqDH4CKEMBax9Wr1kZduGUtPNJN1KbsXDnByPJDDy decentwebLab/README.md
added QmaVC7uhB8beGHowqq6LSjxa9TpwFSgTd1igS1MhGuZgCJ decentwebLab/philosophers-on-gpt3.md
added QmUNLLsPACCz1vLxQVkXqqLX5R1X345qqfHbsf67hvA3Nn decentwebLab/workbench
added QmV7cgWj6ajf3kJEjDbMkcfPqK8riw1je2AMqgFrpBLzfb decentwebLab
 2.76 KiB / 2.76 KiB [==================================================================================================================] 100.00%
 ```  
 
 