for d in client cgiserver master chunkserver; do
	target=alephengineering/lizardfs-${d}:for-testing-ubuntu_20.04_00; 
	docker tag lizardfs-${d} ${target};
	docker push ${target};
done

