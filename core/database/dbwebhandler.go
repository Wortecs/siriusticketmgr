package database

import "github.com/Wortecs/siriusticketmgr/core/web/view"

type Permision view.HeaderParams

func CheckLogin(user, password string) bool {
	return true
}

func CheckSesion(user string) bool {
	return true
}

func SetSesion(user string) {

}

func GetUserHeaderPermision(user string) Permision {
	return Permision{true, true, "/main"}
}
