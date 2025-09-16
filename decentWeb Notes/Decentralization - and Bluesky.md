# Decentralization - and Bluesky

Resources and notes on Bluesky and decentralization  

2024-12-16:  [Re: Re: Bluesky and Decentralization](https://dustycloud.org/blog/re-re-bluesky-decentralization/)  
	By Christine Lemmer-Webber on Fri 13 December 2024


2024-12-17: [## [How decentralized is Bluesky really?](https://dustycloud.org/blog/how-decentralized-is-bluesky/#f)]  
	  By Christine Lemmer-Webber on Fri 22 November 2024  
	- some key notions:  
	- **Decentralization** is the result of a system that diffuses power throughout its structure, so that no node holds particular power at the center.   
	- "**Federation**", as has been used as a _technical_ term since the emergence of the "Fediverse" ... is a technical approach to communication architecture which achieves decentralization by many independent nodes cooperating and communicating to be a unified whole, with no node holding more power than the responsibility or communication of its parts.  
	- Reference definitions of these terms (from wordnik) that I think are close enough to how Christine uses these terms in this post:  
		- **decentralized**: (adjective) not centralized; having no center or several centers: from [Wiktionary, Creative Commons Attribution/Share-Alike License](https://www.wordnik.com/words/decentralized)  
		- **federation**: (noun) the act of constituting a political unity out of a number of separate states or colonies or provinces so that each member retains the management of its internal affairs: from [WordNet 3.0 Copyright 2006 by Princeton University](https://www.wordnik.com/words/federation)  
  > There is one other thing which Bluesky gets right, and which the present-day fediverse does not. This is that Bluesky uses content-addressed content, so that content can survive if a node goes down.  
 >  ... even though such a thing is spec-compatible with ActivityPub, _content-addressing is not done today on ActivityPub_, and _is_ done on Bluesky.  
    SIDENOTE: "content-addressed content": i do not understand what this means; i need an example and counter-example  
 ...
> Bluesky's direct messages ... don't use any particular kind of protocol which is amenable to decentralization or federation.  
    SIDENOTE: what property or properties of protocol make them "amenable to decentralization or federation"?  
  ...  
> ... in all ways related to the distribution of power, Bluesky's technology is notably much less distributed than existing and prominent decentralized technology _in deployment today_.  

 ...
> In my opinion, this should actually be the way Bluesky brands itself ... : an open architecture (that is fair to say!) with the possibility of credible exit. This would be more accurate and reflect better what is provided to users.  

 ...
 (edited from the Decentralized Identifiers history section) " ... the web (is) open and decentralized. Also, the naming+encryption system the web runs on top of is not: DNS+TLS relies on trusting ICANN on down and TLS Certificate Authorities, both of which are centralized approaches."  
 N.B.: `did:web` provides the same security as retrieving a key over `https:`  

...  
> ... one thing I think _is_ true: the fediverse _is_ decentralized and _is_ federated.  

> I stand by my assertions that Bluesky is not meaningfully decentralized and that it is certainly not federated according to any technical definition of federation we have had in a decentralized social network context previously. To claim that Bluesky is decentralized or federated in its current form moves the goalposts of both of those terms ....  

...  
> ... "credible exit" really is the right term for Bluesky's architectural goals. Rearchitecting towards meaningful decentralization and federation is a massive overhaul of Bluesky's infrastructure, but providing "credible exit" is not. It is my opinion that leaning into "credible exit" is the best thing that Bluesky can do: perhaps a large corporation or two always have to sit at the center of Bluesky, but perhaps also it will be possible for people to leave.  


-----
Some acronyms and other terms for which I needed definitions:  

PBC: Public Benefit Corporation 

PDS:  

Relay:  

"content-addressed content": TODO: include a useful definition and example  

_credible exit_: if Bluesky Social PBC goes out of business or loses users’ trust, other providers can step in to provide an equivalent service using the same dataset and the same protocols. -- [Bluesky and the AT Protocol: Usable Decentralized Social Media](https://arxiv.org/pdf/2402.03239)  

