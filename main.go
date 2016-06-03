package main

import (
	"io/ioutil"
	"net/http"

	"github.com/gin-gonic/gin"
)

func mainHandler(c *gin.Context) {
	file, err := ioutil.ReadFile("static/main.html")
	if err != nil {
		c.String(http.StatusBadRequest, "Error!!!")
	}
	c.Writer.Write(file)
}

func main() {

	router := gin.Default()
	router.GET("/", mainHandler)

	router.Run(":8080")

}
