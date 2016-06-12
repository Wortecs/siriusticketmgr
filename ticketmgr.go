package main

import (
	"io/ioutil"
	"net/http"

	"github.com/Wortecs/siriusticketmgr/web/handler"
	"github.com/gin-gonic/contrib/sessions"
	"github.com/gin-gonic/gin"
)

func main() {
	//TODO goodkay to dababase: super_secret_key;
	store := sessions.NewCookieStore([]byte("super_secret_key"))

	router := gin.Default()
	router.Use(sessions.Sessions("user", store))
	//For html to get css js img
	router.Static("/static", "./static")
	router.GET("/", handler.LogginHandler)

	router.POST("/", handler.EnterHandler)

	//router.POST("/main", handler.MainPageHandler)

	router.GET("/main", handler.MainPageHandler)

	router.GET("/incorect", handler.IncorrectLogginHandler)

	// router.GET("/", mainHandler)

	// router.NoRoute(pageNotFound)
	// //TODO POST to loginpage
	// router.GET("/incorect", incorectLogin)

	router.Run(":8080")

}

func mainHandler(c *gin.Context) {
	file, err := ioutil.ReadFile("static/login.html")
	if err != nil {
		c.String(http.StatusBadRequest, "Error!!!")
	}
	c.Writer.Write(file)
}

func incorectLogin(c *gin.Context) {
	file, err := ioutil.ReadFile("static/notlogin.html")
	if err != nil {
		c.Writer.WriteString(err.Error())
	}
	c.Writer.Write(file)
}

func pageNotFound(c *gin.Context) {
	file, err := ioutil.ReadFile("static/pagenotfound.html")
	if err != nil {
		c.Writer.WriteString(err.Error())
	}
	c.Writer.Write(file)
}

func afterLogin(c *gin.Context) {
	//TODO more
	//session := sessions.Default(c)
	//session.Get("loggin")

	file, err := ioutil.ReadFile("static/main.html")
	if err != nil {
		c.Writer.WriteString(err.Error())
	}
	c.Writer.Write(file)

}
