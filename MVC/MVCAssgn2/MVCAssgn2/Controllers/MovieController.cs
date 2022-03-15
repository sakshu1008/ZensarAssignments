using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcAssgn2.Models;

namespace MvcAssgn2.Controllers
{
    public class MovieController : Controller
    {
        MoviedatabaseEntities db = new MoviedatabaseEntities();
        // GET: Movie
        public ActionResult Index()
        {
            return RedirectToAction("GetMovie");
        }

        public ActionResult GetMovie()
        {
            List<Movie> m = db.Movies.ToList();
            return View(m);
        }

        [HttpGet]
        public ActionResult create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(Movie m)
        {
            db.Movies.Add(m);
            db.SaveChanges();
            return RedirectToAction("GetMovie");
        }

        public ActionResult Details(int id)
        {
            Movie c = db.Movies.Find(id);
            return View(c);
        }

        [HttpGet]
        public ActionResult Edit(int id)
        {
            Movie cat = db.Movies.Find(id);
            return View(cat);
        }

        [HttpPost]
        public ActionResult Edit(Movie movie)
        {
            Movie mvs = db.Movies.Find(movie.mid); //getting the before update data
            mvs.mname = movie.mname; //setting the updated data to the cat object
            mvs.DateOfRelease = movie.DateOfRelease;
            db.SaveChanges();
            return RedirectToAction("GetMovie");
        }

        public ActionResult Delete(int id)
        {
            Movie cat = db.Movies.Find(id);
            db.Movies.Remove(cat);
            db.SaveChanges();
            return RedirectToAction("GetMovie");

        }

        public ActionResult GetMoviesByYear(string search)
        {
            List<Movie> movies = (from m in db.Movies
                                        where m.DateOfRelease.ToString().Contains(search) || search == null
                                        select m).ToList();
            return View(movies);
        }
    }
}