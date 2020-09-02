#! /bin/bash


function Error()
{
	echo "ERROR:" ${@} 1>&2
}
function Warning()
{
	echo "WARNING:" ${@} 1>&2
}

