<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class EStoreController extends AbstractController
{
    /**
     * @Route("/estore", name="estore")
     */
    public function index(): Response
    {
        return $this->render('e_store/index.html.twig', [
            'controller_name' => 'EStoreController',
        ]);
    }
     /**
     * @Route("/", name="accueil")
     */
    public function home(){
        return $this ->render ('e_store/home.html.twig');
    }
}
