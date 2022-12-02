<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class BigEventsController extends AbstractController
{
    #[Route('/big_events', name: 'big_events')]
    public function index(): Response
    {
        return $this->render('big_events/index.html.twig', [
            'controller_name' => 'BigEventsController',
        ]);
    }
}
