build:
	oc project qiyunxin
	oc create -f apache-pv.yaml
	oc create -f apache-pvc.yaml
	oc create -f apache-service.yaml
	oc create -f apache-dc.yaml

uninstall:
	oc project qiyunxin
	oc delete -f apache-pv.yaml
	oc delete -f apache-pvc.yaml
	oc delete -f apache-service.yaml
	oc delete -f apache-dc.yaml