package web

import "html/template"

var Templates map[string]*template.Template

type TemplateParams struct {
	IsAdmin    bool
	IsSuperior bool
	IsLogin    bool
	Link       string
}

func init() {
	Templates = make(map[string]*template.Template)

	main := template.New("main").Delims("{%", "%}")

	t, e := main.ParseFiles("./templates/base.tpl", "./templates/main.tpl")
	Templates["main"] = template.Must(t, e)
	//t, e = template.New("404").ParseFiles("./web/templates/base.tpl", "./web/templates/not_found.tpl")
	//Templates["Notfound"] = template.Must(t, e)
}
