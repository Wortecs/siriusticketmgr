package handler

import (
	"github.com/Wortecs/siriusticketmgr/core/web/view"
	"github.com/gin-gonic/gin"
)

//Handler show Loggin page to user
func NotFoundHandler(c *gin.Context) {
	err := view.Templates["notfound"].ExecuteTemplate(
		c.Writer,
		"base",
		0,
	)

	if err != nil {
		panic(err)
	}
}

func IncorrectLogginHandler(c *gin.Context) {
	err := view.Templates["logginerror"].ExecuteTemplate(
		c.Writer,
		"base",
		serverParam,
	)

	if err != nil {
		panic(err)
	}
}
