package main

import (
    "fmt"
	"strings"
	//"math/rand"
	"time"
)

func main() {
	codeMap:=make(map[int]string)
	for i := 1; i < 10; i++ {
		//code=append(code,fmt.Sprintf("%06d",i))
		codeMap[i]=fmt.Sprintf("%06d",i)
	}

	code:=make([]string,0)
	for _,v := range codeMap {
		fmt.Printf("%s",v)
		code=append(code,v)
		fmt.Println("")
	}
	
	fmt.Println(strings.Join(code,","))
	
	
	s:=strings.Split(strings.Join(code,","), ",")
	
	fmt.Println(len(s))
	fmt.Println(s)
	
	
	fmt.Println(time.Now().UnixNano()/1e6)
	fmt.Println(time.Now().UnixNano()/1e9)
	c := time.Unix(time.Now().UnixNano()/1e6,0)
    fmt.Println(c.String())
	
	
	
	t:=fmt.Sprintf("%d",time.Now().UnixNano()/1e6)
	fmt.Println(t)
	fmt.Println(len(t))
	fmt.Println(time.Unix(time.Now().UnixNano()/1e9, 0).Format("150405"))
	
	
	
	
	
	fmt.Println("@@@@@@@@@@@@@@@@@@@@@@@")
	for j := 0; j <= 5; j++ {
		fmt.Println(time.Now().UnixNano())
	}
	
	
	s1	:=fmt.Sprintf("%d%d",time.Unix(time.Now().Unix(), 0).Format("150405"),565)
	fmt.Println(s1)
}





















