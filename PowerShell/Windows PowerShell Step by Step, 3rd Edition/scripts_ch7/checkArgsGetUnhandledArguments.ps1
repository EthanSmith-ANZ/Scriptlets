function my-function
{
 #[cmdletbinding()]
 Param($a,$b)
 $a
 $b
 if($args.count -gt 0) {Write-Error "unhandled arguments supplied"}
}