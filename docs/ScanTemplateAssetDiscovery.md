# Rapid7VmConsole::ScanTemplateAssetDiscovery

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**collect_whois_information** | **BOOLEAN** | Whether to query Whois during discovery. Defaults to &#x60;false&#x60;. | [optional] 
**fingerprint_minimum_certainty** | **Float** | The minimum certainty required for a fingerprint to be considered valid during a scan. Defaults to &#x60;0.16&#x60;. | [optional] 
**fingerprint_retries** | **Integer** | The number of fingerprinting attempts made to determine the operating system fingerprint. Defaults to &#x60;4&#x60;. | [optional] 
**ip_fingerprinting_enabled** | **BOOLEAN** | Whether to fingerprint TCP/IP stacks for hardware, operating system and software information. | [optional] 
**send_arp_pings** | **BOOLEAN** | Whether ARP pings are sent during asset discovery. Defaults to &#x60;true&#x60;. | [optional] 
**send_icmp_pings** | **BOOLEAN** | Whether ICMP pings are sent during asset discovery. Defaults to &#x60;false&#x60;. | [optional] 
**tcp_ports** | **Array&lt;Integer&gt;** | TCP ports to send packets and perform discovery. Defaults to no ports. | [optional] 
**treat_tcp_reset_as_asset** | **BOOLEAN** | Whether TCP reset responses are treated as live assets. Defaults to &#x60;true&#x60;. | [optional] 
**udp_ports** | **Array&lt;Integer&gt;** | UDP ports to send packets and perform discovery. Defaults to no ports. | [optional] 


