# IPFS - Experiment 20251011-01

This experiment is to follow the instructions in [SnapStack - Collaborative Writing, Stacked as Immutable Snapshots](https://snapstack.massive.wiki/snapstack_-_collaborative_writing,_stacked_as_immutable_snapshots)  

Starting assumptions and expectations:  
- reusing the "decentwebLab" folder
- this will create more clutter in the local datastore, so think about cleanup and document how you do it  
- one goal is to have a working understanding of IPNS naming and what happens when updates are made and shared.

#### Notes on using the Collab Writing instructions:  
- ipfs is installed; daemon is running  
- since we will be updating this wiki page there may be (too?) many updates
	- Note: move this page outside of the "decenwebLab" folder while running this experiment.  

```shell
ipfs add -Qr /Users/band/Documents/ipfsLab/decentwebLab
QmTeryTWHxALVdnGnDEekPGJuxc4JDRtiZcRYuMgFqDu16
```
Q: full path required?  
```shell
ipfs pin add QmTeryTWHxALVdnGnDEekPGJuxc4JDRtiZcRYuMgFqDu16
pinned QmTeryTWHxALVdnGnDEekPGJuxc4JDRtiZcRYuMgFqDu16 recursively

ipfs name publish --key=texts-key QmTeryTWHxALVdnGnDEekPGJuxc4JDRtiZcRYuMgFqDu16
Published to k2k4r8mazpw2t842at6vdle2457tjp07veae06r8exytw17b0tykgyw8: /ipfs/QmTeryTWHxALVdnGnDEekPGJuxc4JDRtiZcRYuMgFqDu16
```
Note: there is an error in the instructions: the numbering is not sequential and the instruction on using `ipfs name publish` has a confusing reference.

- reset: did `ipfs pin ls` and `ipfs pin rm` on all CIDs
```shell
ipfs add -Qr ./decentwebLab 
QmTeryTWHxALVdnGnDEekPGJuxc4JDRtiZcRYuMgFqDu16

ipfs name publish --key=texts-key QmTeryTWHxALVdnGnDEekPGJuxc4JDRtiZcRYuMgFqDu16
Published to k2k4r8mazpw2t842at6vdle2457tjp07veae06r8exytw17b0tykgyw8: /ipfs/QmTeryTWHxALVdnGnDEekPGJuxc4JDRtiZcRYuMgFqDu16

ipfs pin ls
QmSnpAUF4fsxPkS5ydjqkWhnpeCYRzj7YqWsQNiFTd919S indirect
QmTeryTWHxALVdnGnDEekPGJuxc4JDRtiZcRYuMgFqDu16 recursive
QmUw1L6KRtfTwd1AHxcbxTUMVJHgTUz31vp3W5gXGD2ebK indirect
QmWdrnrxE9TZD7q5GLdytSK4ompYnEnTWnFq49fcLWCuST indirect
QmaVC7uhB8beGHowqq6LSjxa9TpwFSgTd1igS1MhGuZgCJ indirect
QmPZdDWqJ5cdej6vRYMjfk8tHwX2DiSpHDSkAb4aW9aFNK indirect
```

- off the script experiment:  
```shell
pinata upload --name decentwebLab --verbose ./decentwebLab 
Uploading folder decentwebLab (25.75 KB)
Uploading... 100% |████████████████████████████████████████| (72 kB/s)        
{
    "id": "b72de665-3380-4bfa-8337-b9a3945ae4a6",
    "name": "decentwebLab",
    "cid": "bafybeidwzviakfgtslludikdkv4hssu7nefdzghxhahelkfoismcpz34tu",
    "size": 23890,
    "created_at": "2025-10-12T21:44:05.411Z",
    "number_of_files": 12,
    "mime_type": "directory",
    "group_id": null,
    "keyvalues": null,
    "vectorized": false,
    "network": "public"
}
```
- my first question: why is the number of files 12; there are only 7 files in the directory.
	- follow-on experiment:
	- delete the pinata object
	- move the `.obsidian` directory to a holding pen 
	- delete the pin from the local store and pinata
	- and we will re-add, re-pin, re-upload

**2025-10-13** today's labwork:  
```shell
ipfs add -Qr ./decentwebLab 
QmTeryTWHxALVdnGnDEekPGJuxc4JDRtiZcRYuMgFqDu16
CIDa=QmTeryTWHxALVdnGnDEekPGJuxc4JDRtiZcRYuMgFqDu16

ipfs name publish --key=texts-key $CIDa
Published to k2k4r8mazpw2t842at6vdle2457tjp07veae06r8exytw17b0tykgyw8: /ipfs/QmTeryTWHxALVdnGnDEekPGJuxc4JDRtiZcRYuMgFqDu16

ipfs pin add $CIDa
pinned QmTeryTWHxALVdnGnDEekPGJuxc4JDRtiZcRYuMgFqDu16 recursively

pinata upload --name decentwebLab ./decentwebLab 
{
    "id": "6add5b4e-9283-47ee-ae7a-8cecd76288cc",
    "name": "decentwebLab",
    "cid": "bafybeidnaeqqjouip7tpvl4yfqh7prmd6d6zg2stbbktecnh5lrbcvwoiq",
    "size": 1887,
    "created_at": "2025-10-13T12:36:58.902Z",
    "number_of_files": 4,
    "mime_type": "directory",
    "group_id": null,
    "keyvalues": null,
    "vectorized": false,
    "network": "public"
}
```
```shell
ipfs pin ls
QmPZdDWqJ5cdej6vRYMjfk8tHwX2DiSpHDSkAb4aW9aFNK indirect
QmSnpAUF4fsxPkS5ydjqkWhnpeCYRzj7YqWsQNiFTd919S indirect
QmTeryTWHxALVdnGnDEekPGJuxc4JDRtiZcRYuMgFqDu16 recursive
QmUw1L6KRtfTwd1AHxcbxTUMVJHgTUz31vp3W5gXGD2ebK indirect
QmWdrnrxE9TZD7q5GLdytSK4ompYnEnTWnFq49fcLWCuST indirect
QmaVC7uhB8beGHowqq6LSjxa9TpwFSgTd1igS1MhGuZgCJ indirect

pinata files list
{
    "files": [
        {
            "id": "6add5b4e-9283-47ee-ae7a-8cecd76288cc",
            "name": "decentwebLab",
            "cid": "bafybeidnaeqqjouip7tpvl4yfqh7prmd6d6zg2stbbktecnh5lrbcvwoiq",
            "size": 1887,
            "number_of_files": 4,
            "mime_type": "directory",
            "keyvalues": {},
            "created_at": "2025-10-13T12:36:58.902Z"
        },
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

- after some documentation reading I think I have a better idea of what I have already done and how to think about using IPFS going forward.
- observations from today's lab work:
	- the Pinata upload did indeed upload all the files in "decentwebLab"
	- can use Pinata CLI (once installed) to list pinned files and also to generate a URL to share (this URL is long and not easy to read, not useful for sharing with others; generating custom URLs requires Pinata professional level ($20/mo.))
	- one outcome is that successful use of IPFS will require paid services
TODO: compare my experiences with the "SnapStack - Collaborative Writing ..." documentation.
