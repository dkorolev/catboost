# Autogenerated for platforms:
#    darwin-x86_64
#    freebsd-x86_64
#    linux-aarch64
#    linux-x86_64
#    windows-x86_64

PROGRAM(openssl)



NO_COMPILER_WARNINGS()

NO_UTIL()

PEERDIR(
    contrib/libs/openssl
)

ADDINCL(
    contrib/libs/openssl
    contrib/libs/openssl/include
)

CFLAGS(
    -DMONOLITH
    -DOPENSSL_THREADS
    -DSHA1_ASM
    -DSHA256_ASM
    -DSHA512_ASM
)

IF (OS_DARWIN AND ARCH_X86_64 OR OS_FREEBSD AND ARCH_X86_64 OR OS_LINUX AND ARCH_AARCH64 OR OS_LINUX AND ARCH_X86_64)
    CFLAGS(-D_REENTRANT)
ENDIF()

IF (OS_DARWIN AND ARCH_X86_64 OR OS_FREEBSD AND ARCH_X86_64 OR OS_LINUX AND ARCH_X86_64 OR OS_WINDOWS AND ARCH_X86_64)
    CFLAGS(
        -DAES_ASM
        -DBSAES_ASM
        -DECP_NISTZ256_ASM
        -DGHASH_ASM
        -DL_ENDIAN
        -DMD5_ASM
        -DOPENSSL_BN_ASM_GF2m
        -DOPENSSL_BN_ASM_MONT
        -DOPENSSL_BN_ASM_MONT5
        -DOPENSSL_IA32_SSE2
        -DVPAES_ASM
        -DWHIRLPOOL_ASM
    )
ENDIF()

IF (OS_FREEBSD AND ARCH_X86_64 OR OS_LINUX AND ARCH_X86_64 OR OS_WINDOWS AND ARCH_X86_64)
    CFLAGS(-DRC4_ASM)
ENDIF()

IF (OS_FREEBSD AND ARCH_X86_64)
    CFLAGS(-D_THREAD_SAFE)
ENDIF()

IF (OS_WINDOWS AND ARCH_X86_64)
    CFLAGS(
        -DOPENSSL_NO_DYNAMIC_ENGINE
        -DOPENSSL_NO_JPAKE
        -DOPENSSL_NO_KRB5
        -DOPENSSL_NO_MD2
        -DOPENSSL_NO_RC5
        -DOPENSSL_NO_SSL2
        -DOPENSSL_NO_WEAK_SSL_CIPHERS
        -DOPENSSL_SYSNAME_WIN32
        -DUNICODE
        -DWIN32_LEAN_AND_MEAN
        -D_CRT_SECURE_NO_DEPRECATE
        -D_UNICODE
    )
ENDIF()

IF (OS_WINDOWS AND ARCH_X86_64)
    LDFLAGS(
        advapi32.lib
        crypt32.lib
        gdi32.lib
        setargv.obj
        user32.lib
        ws2_32.lib
    )
ENDIF()

SRCS(
    app_rand.c
    apps.c
    asn1pars.c
    ca.c
    ciphers.c
    cms.c
    crl.c
    crl2p7.c
    dgst.c
    dh.c
    dhparam.c
    dsa.c
    dsaparam.c
    ec.c
    ecparam.c
    enc.c
    engine.c
    errstr.c
    gendh.c
    gendsa.c
    genpkey.c
    genrsa.c
    nseq.c
    ocsp.c
    openssl.c
    passwd.c
    pkcs12.c
    pkcs7.c
    pkcs8.c
    pkey.c
    pkeyparam.c
    pkeyutl.c
    prime.c
    rand.c
    req.c
    rsa.c
    rsautl.c
    s_cb.c
    s_client.c
    s_server.c
    s_socket.c
    s_time.c
    sess_id.c
    smime.c
    speed.c
    spkac.c
    srp.c
    ts.c
    verify.c
    version.c
    x509.c
)

END()