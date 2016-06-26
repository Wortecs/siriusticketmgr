package handler

import (
	"github.com/Wortecs/siriusticketmgr/core/database"
	"github.com/Wortecs/siriusticketmgr/core/web/view"
	"github.com/gin-gonic/contrib/sessions"
	"github.com/gin-gonic/gin"
)

var serverParam = view.GlobalParam{"http://localhost:8080/"}

func MainPageHandler(c *gin.Context) {

	session := sessions.Default(c)

	user := session.Get("user")

	if user != nil && database.CheckSesion(user.(string)) {
		username := user.(string)

		database.SetSesion(username)
		permision := database.GetUserHeaderPermision(username)

		err := view.Templates["main"].ExecuteTemplate(
			c.Writer,
			"base",
			permision,
		)

		if err != nil {
			panic(err)
		}

	} else {

		c.Redirect(302, "/")
	}

}
