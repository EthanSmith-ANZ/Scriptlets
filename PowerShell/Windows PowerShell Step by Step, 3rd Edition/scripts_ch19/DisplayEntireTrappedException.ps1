try {
    $w = New-Object net.WebClient
    $d = $w.downloadString('http://foo')
}
catch [Net.WebException] {
    $_ | fl * -Force
}
