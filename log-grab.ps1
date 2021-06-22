param ($name, $namespace, $context)
# change the path of the log to be where ever you'd like the logs dumped
kubectl logs $name -n $namespace --context $context > C:\logs\$name.log