<?php
namespace App\Controller;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use App\Entity\Membres;

class MembresController extends AbstractController
    {
    public function listeMembres() {
    $membres = $this->getDoctrine() ->getRepository(Membres::class) ->findAll();
    if (!$membres) {
    throw $this->createNotFoundException('Aucun membre !' );
    }
    $html = '<html>
                <body>  <h3> Liste des membres :  <br/>
                        <ul>';
                            foreach ($membres as $membre) {
                            $html .= 
                            '<li>'.$membre->getNom().'</li>';
        }
                            $html .=
                        '</ul>
                </body><h3>
            </html>';
    return new Response($html);
    }
}
?>