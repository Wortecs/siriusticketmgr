package main

import (
	"github.com/Wortecs/siriusticketmgr/core/web/handler"
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

	router.NoRoute(handler.NotFoundHandler)
	// router.GET("/", mainHandler)

	// router.NoRoute(pageNotFound)
	// //TODO POST to loginpage
	// router.GET("/incorect", incorectLogin)

	router.Run(":8080")

}
