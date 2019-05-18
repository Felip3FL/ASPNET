﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Aula25_Rotas.Models;

namespace Aula25_Rotas.Controllers
{
    public class ProdutoController : Controller
    {

        private List<Produto> todosProdutos;

        public ProdutoController()
        {
            todosProdutos = new Produto().TodosProdutos().OrderBy(x => x.Preco).ToList();
        }

        // GET: Produto
        public ActionResult Index()
        {
            ViewBag.Produtos = "Todos os Produtos";
            return View(todosProdutos);
        }
    }
}