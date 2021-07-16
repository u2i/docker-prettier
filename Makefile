default: build-image

build-image:
	docker build -t public.ecr.aws/spauldingmedical/prettier .
