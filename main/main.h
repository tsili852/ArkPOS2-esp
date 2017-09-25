#ifndef __MAIN_H__
#define __MAIN_H__ 1

// Adjust these values for your environment.
// -------------------------------------------------------------------------------------

// Used by the OTA module to check if the current version is different from the version
// on the server, i.e. if an upgrade or downgrade should be performed.
#define SOFTWARE_VERSION          1

// Provide the network name and password of your WIFI network.
#define WIFI_NETWORK_SSID         "ProlecAdmin"
#define WIFI_NETWORK_PASSWORD     "Car-Naval-015"

// Provide server name, path to metadata file and polling interval for OTA updates.
//#define OTA_SERVER_HOST_NAME      "167.114.240.34"
#define OTA_SERVER_HOST_NAME      "ota-update.arkpos2.tests.saas.chb-technologies.ch"
#define OTA_SERVER_METADATA_PATH  "/esp32-ota-https/final_binaries/ota.txt"
#define OTA_POLLING_INTERVAL_S    5
#define OTA_AUTO_REBOOT           1

// Provide the Root CA certificate for chain validation.
// (copied from gd_bundle-g2-g1.crt)
#define OTA_SERVER_ROOT_CA_PEM \
    "-----BEGIN CERTIFICATE-----\n" \
    "MIIEDTCCAvWgAwIBAgIJAMdYuHX70E/rMA0GCSqGSIb3DQEBCwUAMIGcMQswCQYD\n" \
    "VQQGEwJDSDEPMA0GA1UECAwGVmFsYWlzMQ4wDAYDVQQKDAVDSEJTQTE6MDgGA1UE\n" \
    "Awwxb3RhLXVwZGF0ZS5hcmtwb3MyLnRlc3RzLnNhYXMuY2hiLXRlY2hub2xvZ2ll\n" \
    "cy5jaDEwMC4GCSqGSIb3DQEJARYhbmljay50c2lsaXZpc0BjaGItdGVjaG5vbG9n\n" \
    "aWVzLmNoMB4XDTE3MDkxNTEyMTgxMloXDTM3MDkxMDEyMTgxMlowgZwxCzAJBgNV\n" \
    "BAYTAkNIMQ8wDQYDVQQIDAZWYWxhaXMxDjAMBgNVBAoMBUNIQlNBMTowOAYDVQQD\n" \
    "DDFvdGEtdXBkYXRlLmFya3BvczIudGVzdHMuc2Fhcy5jaGItdGVjaG5vbG9naWVz\n" \
    "LmNoMTAwLgYJKoZIhvcNAQkBFiFuaWNrLnRzaWxpdmlzQGNoYi10ZWNobm9sb2dp\n" \
    "ZXMuY2gwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDVjnpJQdilX8n4\n" \
    "rut+tMe0oq+3qSJjRhENVEdd3FpKYnPEEAtla+MjIrx/biS9uzD1KZ4OJAjrbqaf\n" \
    "SsQJ9ksusYEtEqPrNKy9t9GIbYXh+fQM0cJs/tDqklXcs8CbSo9JQEHa2HXDEGke\n" \
    "yOojy1xJ7CzV+HJQp1QGbCRhkJB77xtPV1AubMolk+yzN2jrfEHTj2QeOCFifVjD\n" \
    "1t7RsA28RzYqtvoj35aKxPkDzCSwf7wx68KFZK/vfv+6YjS8mxGuQhaPvDi7G2Ve\n" \
    "QLFABvOKQyxaRjMF2WCsZkRrjJac8/gKilDNM44GbRGxIhh+iCIELn6D203kAA/q\n" \
    "Nf7K/hJbAgMBAAGjUDBOMB0GA1UdDgQWBBRvxMQJatofmLiTMiko8mhvSH43ujAf\n" \
    "BgNVHSMEGDAWgBRvxMQJatofmLiTMiko8mhvSH43ujAMBgNVHRMEBTADAQH/MA0G\n" \
    "CSqGSIb3DQEBCwUAA4IBAQBvhNq1BJ0BcfrWe1l5TU/vg1r5CsvyD/Es1sRQ2Ijm\n" \
    "pw/ztaXWTxRn6WGmSzKOwQNpz/GZ99hHgxAUKghm31qx8GeD5v6EYd+mEkgRVS+f\n" \
    "sd/fNWWuo3pyHY+OMiiwKtD3XaaBqO3EoLJnPrePatJgSFSDz9/S26Nfj97+Hyy1\n" \
    "+NmWdxlrqWKMkX0mDsfsO8fjJ8gPDRYmfYSOIENtEf3rRlNCKlurRQg4wQ6rHvR7\n" \
    "zuIHtvIHR6dEKB5LNfZufPG17LARg4gXFZ/RvUY8P4vw2/iOXDu03jbIbfeYtMO2\n" \
    "0+4TnKrOZL5rsiMliCTosf09bj9djicGD3ZFl30PqRIh\n" \
    "-----END CERTIFICATE-----\n" 
    

// Provide the Peer certificate for certificate pinning.
// (copied from classycode.io.crt)
#define OTA_PEER_PEM \
    "-----BEGIN CERTIFICATE-----\n" \
    "MIIDYTCCAkkCCQDG3Zr5jtYD1jANBgkqhkiG9w0BAQsFADCBnDELMAkGA1UEBhMC\n" \
    "Q0gxDzANBgNVBAgMBlZhbGFpczEOMAwGA1UECgwFQ0hCU0ExOjA4BgNVBAMMMW90\n" \
    "YS11cGRhdGUuYXJrcG9zMi50ZXN0cy5zYWFzLmNoYi10ZWNobm9sb2dpZXMuY2gx\n" \
    "MDAuBgkqhkiG9w0BCQEWIW5pY2sudHNpbGl2aXNAY2hiLXRlY2hub2xvZ2llcy5j\n" \
    "aDAeFw0xNzA5MTUxNDMxNDFaFw0zNzA5MTAxNDMxNDFaMEgxCzAJBgNVBAYTAkNI\n" \
    "MQ8wDQYDVQQIDAZWQUxBSVMxDjAMBgNVBAoMBUNIQkFTMRgwFgYDVQQDDA9sb2Nh\n" \
    "bC5FU1AzMi5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCvt/VE\n" \
    "kG1s2OtbBx6/RpKrKoQQwkKsB2NqhSqFbAPeBDUOcjxNPhRNrE+mc92MNvUqHw2X\n" \
    "tb3OvkHS3KrS3OO8hgWnJRlCBrduzx+iF8m7EaVebbrYG7CMwjsIhmmjKvXn0QXu\n" \
    "D+mTJ2KfkS9/TSx0acWYJ2W7TyCH5nZICLxMLFctIzsWQ2rjtn06m0B/QKAuEs/s\n" \
    "LO6s1bnnjuL4BzR6rOmmSnHEPfqoFbo+Vwls3WG/zmn2pV5CMrs0ruJ1Fu1IyoiS\n" \
    "iKSUaEXZr66JGJcnLU6HxElRvmJ1OJxD9m8jyxnu7Aydzj548CpoDov25ZlqsE6a\n" \
    "/8UhvoXy8Hha+VqNAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAOEi8unc8HvEWvdR\n" \
    "IHjIZaQyYXnNaiuhu8Ao3EXY9ws0HgRW5+ewRxGBPtEjFw5CmLsnrAf2hu0sdSL3\n" \
    "xblqbYBr/OLob/cSf/xSGtb3K/kmJ8weS3p3eLLfm8UDeH6rZrquENHXTlJ6jpgf\n" \
    "M9h7ShpcZ1JujvJ6WJ1rZtiQ/sKsrcwumanbgJegsnGxgdti0FAqnX8ol9pthBS1\n" \
    "9tbT7DAvCq+69Texk/feUB/dVVGdOIHTqxHrC1l2k6Wu1jrBulx1A5TyTxg4gbdt\n" \
    "vj0czJYu9KZowhbLaRpDBI66rPFQPiHt9C9T/KJdA8dg1lS2zoZ1+cw3BNmEq288\n" \
    "QmKOBXc=\n" \
    "-----END CERTIFICATE-----\n"

// -------------------------------------------------------------------------------------

#endif // __MAIN_H__
