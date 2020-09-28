$adjectives = Get-Content -Path .\scripts\adjectives.txt
$animals = Get-Content -Path .\scripts\animals.txt
$verbs = Get-Content -Path .\scripts\verbs.txt

$countAdjectives = $adjectives.Count;
$countAnimals = $animals.Count;
$countVerbs = $verbs.Count;

function Get-Short-Phrase {
    $adjectiveIndex = Get-Random -Maximum $countAdjectives
    $animalIndex = Get-Random -Maximum $countAnimals

    $phrase = $adjectives[$adjectiveIndex].Normalize().Trim() +" "+ $animals[$animalIndex].Normalize().Trim().ToLower()

    Write-Output $phrase    
}

function Get-Long-Phrase {
    $adjectiveIndex = Get-Random -Maximum $countAdjectives
    $animalIndex = Get-Random -Maximum $countAnimals
    $verbIndex = Get-Random -Maximum $countVerbs

    $phrase = $adjectives[$adjectiveIndex].Normalize().Trim() +" "+ $verbs[$verbIndex].Normalize().Trim() +" "+ $animals[$animalIndex].Normalize().Trim().ToLower()

    Write-Output $phrase    
}
