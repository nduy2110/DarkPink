def xor(key, file):
    return bytes([key ^ y for y in file])
pathFolderEncrypted = {
    "D:/EncryptedZipFile/6d30b4e3442b4a5eef8dbc952a52cb3c_.zip": "D:/EncryptedZipFile/BrowserData.zip",
    "D:/EncryptedZipFile/207812f09349ef96b709cfe8d7e295ba_.zip": "D:/EncryptedZipFile/RecordAudio.zip",
    "D:/EncryptedZipFile/21f64da1e5792c8295b964d159a14491_.zip": "D:/EncryptedZipFile/Docs.zip",
    "D:/EncryptedZipFile/bee96b3468e219f06905b1ceaa1d4902_.zip": "D:/EncryptedZipFile/Cmd.zip"
}
for path in pathFolderEncrypted.keys():
    f = open(path,'rb')
    a = f.read()
    key = a[0]
    # print(len(a))
    tmp=xor(key,a[1:])
    # print(len(tmp))
    open(pathFolderEncrypted[path],'wb').write(tmp)
