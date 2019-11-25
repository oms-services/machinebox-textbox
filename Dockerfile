FROM golang

RUN go get github.com/gorilla/mux

RUN go get -v github.com/machinebox/sdk-go/textbox

WORKDIR /go/src/github.com/oms-services/machinebox-textbox

ADD . /go/src/github.com/oms-services/machinebox-textbox

RUN go install github.com/oms-services/machinebox-textbox

ENTRYPOINT ["machinebox-textbox"]

EXPOSE 8000