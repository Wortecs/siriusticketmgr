package handler

import (
	"github.com/Wortecs/siriusticketmgr/web/view"
	"github.com/gin-gonic/gin"
)

var serverParam = view.GlobalParam{"http://134.249.153.238:8080/"}

func LoginHandler(c *gin.Context) {
	err := view.Templates["login"].ExecuteTemplate(
		c.Writer,
		"base",
		serverParam,
	)

	if err != nil {
		panic(err)
	}
}
