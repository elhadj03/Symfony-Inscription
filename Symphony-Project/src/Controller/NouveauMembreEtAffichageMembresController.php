<?php
namespace App\Controller;
use App\Entity\Membres;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;

class NouveauMembreEtAffichageMembresController extends AbstractController {

    public function nouveauMembreEtAffichageMembres(Request $request) {
    $membre = new Membres();
    $membres = array();

    $form = $this->createFormBuilder($membre)
        ->add('mail', TextType::class, array('label' => 'Adresse email '))
        ->add('password', TextType::class, array('label' => 'Password '))
        ->add('nom', TextType::class, array('label' => 'Nom '))
        ->add('prenom', TextType::class, array('label' => 'Prenom '))
        ->add('save', SubmitType::class, array('label' => 'Nouveau membre'))
        ->getForm();

    $form->handleRequest($request);

    if ($form->isSubmitted() && $form->isValid()) {
        $membre = $form->getData();
        $entityManager = $this->getDoctrine()->getManager();
        $entityManager->persist($membre);
        $entityManager->flush();
        $membres = $this->getDoctrine()
        ->getRepository(Membres::class)
        ->findAll();
        }
    return $this->render('nouveauMembreEtAffichageMembres.html.twig', array(
        'form' => $form->createView(), 'membres' => $membres
        ));
    }
}
?>