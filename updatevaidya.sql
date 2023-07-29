-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2023 at 10:17 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vaidya`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `comment`) VALUES
('Anirudh', 'anidigraj@gmail.com', 'WE LOVE INDIA\r\n'),
('Harshal', 'harshal@gmail.com', 'cool'),
('Raman', 'raman@gmail.com', 'i am having question related to your plz contact me \r\n'),
('Anirudh Vardhman', 'anidigraj@gmail.com', 'Nice Website good job...');

-- --------------------------------------------------------

--
-- Table structure for table `health_con`
--

CREATE TABLE `health_con` (
  `health_id` int(3) NOT NULL,
  `health_name` varchar(50) NOT NULL,
  `health_desc` text NOT NULL,
  `health_sym` text NOT NULL,
  `health_cause` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `health_con`
--

INSERT INTO `health_con` (`health_id`, `health_name`, `health_desc`, `health_sym`, `health_cause`) VALUES
(1, 'Asthma', 'Asthma has been a major cause of concern for people of all ages around the world. With the increasing amount of allergens and rising air pollution in cities around the world, it is no less than an ever-growing pandemic.\r\nSeasonal changes and winters, especially pose a gruesome challenge to people already Suffering from Asthma. Not to forget the continuously growing new cases of Asthma each year in all age groups', 'Shortness of breath.\nChest tightness or pain.\nCoughing, especially at night,Asthma', 'House dust mites\r\nAnimal fur(hairs) \r\nPollen\r\nCigarette smoke \r\nViral infections '),
(2, 'Chickenpox', 'Chickenpox is a highly contagious disease caused by the varicella-zoster virus (VZV). It can cause an itchy, blister-like rash among other symptoms. The rash first appears on the chest, back, and face, and then spreads over the entire body.\r\n\r\nChickenpox can be serious, especially during pregnancy, in babies, adolescents, adults, and people with weakened immune systems (lowered ability to fight germs and sickness).', 'Fever\nTiredness\nLoss of appetite\nHeadache\nRash \nSore throat\nMuscle and Joint Pain,\nchickenpox', 'Chickenpox is a highly contagious disease caused by the varicella-zoster virus (VZV).'),
(3, 'Cold Sore', 'A cold sore is a group of tiny, painful blisters caused by the herpes simplex virus (HSV). They’re also called fever blisters or herpes simplex labialis.\r\n\r\nUp to 90% of people around the world have at least one form of HSV.\r\n\r\nThe symptoms are usually the most severe the first you time you get cold sores. A first-time cold sore can make a child seriously ill.\r\n\r\nAfter the first outbreak, your body should make antibodies, and you may never have another infection. But many people get cold sores that come back.', 'Pain or discomfort\nCrusting\nSwelling and redness\nItching or irritation\nSmall, painful,fluid-filled blisters,cold sore\n', 'The strain of herpes simplex virus usually responsible for cold sores is known as HSV-1.\r\nIn rare cases, cold sores can also be caused by the herpes simplex virus type 2 (HSV-2).\r\nThis can be the result of having oral sex with someone who has genital herpes.'),
(4, 'Common cold ', 'The common cold is a viral infection of the upper respiratory tract that is caused by a group of viruses known as rhinoviruses. However, other viruses such as coronaviruses, adenoviruses, and respiratory syncytial viruses (RSV) can also cause colds. These viruses are highly contagious and can be spread through direct contact with an infected person or by touching contaminated objects or surfaces.', 'A Sore throat\nA Blocked or runny nose \nSneezing \nA Cough,Common cold', 'The common cold is more prevalent during the winter months, as cold weather and low humidity can weaken the body\'s immune system and make it more susceptible to viral infections'),
(5, 'Chest Infection', 'A chest infection is an infection of the lungs or large airways. Some chest infections are mild and clear up on their own, but others can be severe and life threatening', 'Coughing up blood\nDifficulty in feeding \nRunny nose  \nSniffing  \nSnoring \nBlockage of nose,chest infection', 'Most bronchitis cases are caused by viruses, whereas most pneumonia cases are due to bacteria. These infections are usually spread when an infected person coughs or sneezes.'),
(6, 'Coughing with Phlegm', 'Coughing up phlegm is a symptom of infections like the flu and common cold. Phlegm is a specific type of mucus that originates in your lungs and throat. It\'s slightly thicker than the mucus that\'s produced in your nose and sinuses. Another name for phlegm is sputum.', 'Flu and common cold\nDehydration\nchest discomfort\nsore throat\nsneezing\nmuscle aches and pains\nweakness\nfatigue,Coughing with Phlegm\n', 'Infections\r\nAllergies\r\nAsthma\r\nSmoking\r\nDehydration.\r\nSpending time in a dry environment'),
(7, 'Dry Cough ', 'A dry cough is a type of cough that does not produce any phlegm or mucus. It is called \"dry\" because it is not accompanied by any secretion from the respiratory tract. A dry cough can be caused by a variety of factors, including viral infections, allergies, asthma, environmental irritants, acid reflux, and certain medications.', 'Chest pain\nFatigue\nDifficulty breathing:\nHoarseness\nTickling or itching sensation in the throat\nSore throat,Dry Cough', 'Exposure to cold and dry weather\r\nConsuming cold and dry foods\r\nDrinking cold beverages\r\nIrregular eating habits\r\nExcessive talking or shouting\r\nStaying up late at night\r\nStress and anxiety'),
(8, 'Cold and Flu', 'The common cold and flu are both respiratory illnesses caused by viruses. Although they have some similar symptoms, they are caused by different viruses and have some differences in how they affect the body.', 'blocked nose\nbreathing difficulty\ncough\nheadache\nmuscle stiffness\nbody ache due to cold,Cold and Flu', 'Influenza (flu) and the common cold are both contagious respiratory illnesses, but they are caused by different viruses. Flu is caused by influenza viruses only, whereas the common cold can be caused by a number of different viruses, including rhinoviruses, parainfluenza, and seasonal coronaviruses.'),
(9, 'Diabetes', 'Diabetes is a disease that occurs when your blood glucose, also called blood sugar, is too high. Blood glucose is your main source of energy and comes from the food you eat. Insulin, a hormone made by the pancreas, helps glucose from food get into your cells to be used for energy.', 'Needing to go to the toilet a lot, especially at night.\nFeeling thirsty regularly.\nFeeling more tired than usual.\nLosing weight without trying to.\nItching around your genitals or frequent episodes of thrush.\nCuts and wounds that take longer than usual to heal.\nBlurred vision,Diabetes', 'There are two types which causes diabetes\r\nType 1- Due to genetical and herdity.\r\nType 2- Due to  if you are not physically active and are overweight or have obesity. \r\n'),
(10, 'Heart Attack', 'A heart attack, also known as a myocardial infarction (MI), occurs when the blood flow to the heart muscle is blocked, usually by a clot, leading to damage or death of a part of the heart muscle. The most common cause of heart attacks is coronary artery disease, which is a buildup of plaque in the coronary arteries that supply blood to the heart.', 'Chest pain or discomfort:\nPain or discomfort in other parts of the body.\nShortness of breath\nNausea or vomiting,Heart Attack\n', 'Poor diet(Consuming a diet that is high in saturated fats, cholesterol, and sodium).\r\nSedentary lifestyle (Lack of physical activity or regular exercise).\r\nStress.\r\nEnvironmental factors(environmental toxins, pollution).');

-- --------------------------------------------------------

--
-- Table structure for table `remedies`
--

CREATE TABLE `remedies` (
  `reme_id` int(3) NOT NULL,
  `reme_name` varchar(50) NOT NULL,
  `reme_desc` text NOT NULL,
  `reme_inst` text NOT NULL,
  `health_id` int(3) NOT NULL,
  `health_sym` text NOT NULL,
  `Used_for` varchar(225) NOT NULL,
  `yoga_postures` text DEFAULT NULL,
  `times_searched` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `remedies`
--

INSERT INTO `remedies` (`reme_id`, `reme_name`, `reme_desc`, `reme_inst`, `health_id`, `health_sym`, `Used_for`, `yoga_postures`, `times_searched`) VALUES
(1, 'Consume turmeric,', 'Turmeric contains curcumin, which has anti-inflammatory properties. Taking turmeric capsules containing curcumin has been found beneficial in relieving asthma. However, more studies are needed to establish its role.', 'Add turmeric as a spice to your food or consume warm turmeric milk or tea. Take supplements only upon consulting your doctor.\r\n\r\nCaution: Avoid excessive intake of turmeric as it can lead to ulcers, acidity, and blood thinning.', 1, 'Shortness of breath.\nChest tightness or pain.\nCoughing, especially at night,Asthma\n', 'Asthma', 'Pranayama\r\n•    Major Classical pranayamas\r\n•    Ujjayi, Surya Bheda, Chandra Bheda,Bhastrika, Sitali, Sitkari, Sandanta, Nadisuddhi and Bhramari\r\nKriyas\r\n•    Tratak, Neti, Kapalabhati, Dhauti, ', 21),
(2, 'Increase your vitamin C and D intake', 'It is vital to consume a well-balanced diet with vegetables and fruits that are rich in flavonoids and antioxidants, such as vitamins C and D. These compounds also act as anti-inflammatory agents and aid relief', 'Include citrus foods such as orange and lemon, kiwi, potato, and vitamin D-rich foods such as milk, fish, egg, liver, cheese, and cereals in your diet. Use supplements only after consulting your doctor.', 1, 'Shortness of breath. Chest tightness or pain. Coughing, especially at night,Asthma', 'Asthma', '\r\nNauli and Basti:\r\n•    Yoga anatomy and physiology\r\n•    Introduction to the major body systems\r\n•    The effects of asanas and pranayama on: the cardiovascular system, respiration, digestion, skeletal and muscular systems, endocrine system', 21),
(3, 'Apply calamine lotion', 'Calamine lotion can help reduce itching. This lotion contains skin-soothing properties, including zinc oxide', 'Using a clean finger or cotton swab, dab or spread calamine lotion on itchy skin areas. Note that you shouldn’t use calamine lotion on or around chickenpox on your eyes', 2, 'Fever Tiredness Loss of appetite Headache Rash  Sore throat Muscle and Joint Pain, chickenpox', 'chickenpox', '', 3),
(4, 'Serve sugar-free popsicles', 'Chickenpox can also appear inside your mouth. This can be especially painful.', 'Encouraging a child to suck on sugar-free popsicles can be a good way to soothe mouth sores. As a bonus, this allows your child to get more fluids and avoid dehydration.', 2, 'Fever Tiredness Loss of appetite Headache Rash  Sore throat Muscle and Joint Pain, chickenpox', 'Chickenpox', '', 3),
(5, 'Bathe in oatmeal', 'Oatmeal baths can be soothing and itch-relieving for chickenpox. Taking a bath won’t spread the chickenpox from one area of your skin to another.', 'While you can purchase oatmeal bath products at most drugstores, you can also make your own oatmeal bath using the following steps:\r\n\r\nUse one cup of oatmeal for an older child or 1/3 cup for a baby or small child. The oatmeal can be unflavored instant, slow-cooked oats, or quick oats. You can use a food processor or coffee grinder to make the oatmeal flakes very small. Placing oatmeal in a muslin bag or pantyhose can also work.\r\nDraw a bath of warm (not hot) water. Place one tablespoon of ground oatmeal into a glass of warm water. If the oats appear to be absorbing water and turning the water a milky shade, the oatmeal is finely ground enough.\r\nPlace the oatmeal or bag of oats into the bath. Soak for no more than 20 minutes.\r\nYou may also apply oatmeal lotions to skin. This can have a soothing and moisturizing effect on itchy chickenpox blisters.', 2, 'Fever Tiredness Loss of appetite Headache Rash  Sore throat Muscle and Joint Pain, chickenpox', 'chickenpox', '', 3),
(6, 'Wear mittens to prevent scratching', 'Scratching your blisters may be tempting, but it can worsen your discomfort and expose your skin to infection.', 'To prevent the temptation to scratch at night or during naptime, put mittens or soft socks over your child’s hands. Trimming your child’s fingernails so they won’t damage affected areas can also help.', 2, 'Fever Tiredness Loss of appetite Headache Rash  Sore throat Muscle and Joint Pain, chickenpox', 'chickenpox', '', 3),
(7, 'Take baking soda baths', 'Another itch-relieving option to add to a bath is baking soda.', ' Add one cup of baking soda to a shallow, lukewarm bath. Soak for 15 to 20 minutes. Your child can take up to three baths a day if they find this approach soothing', 2, 'Fever Tiredness Loss of appetite Headache Rash  Sore throat Muscle and Joint Pain, chickenpox', 'chickenpox', '', 3),
(8, 'Give approved pain relievers', 'If your child’s chickenpox blisters are especially painful or if you child has a fever, you may wish to give them medication.', 'It’s important not to give a child or teenager aspirin, as they are at increased risk for a condition called Reye’s syndrome if they take aspirin during or when they’re recovering from an infection like chickenpox. Instead, medication like acetaminophen (Tylenol) can help to relieve painful symptoms. Avoid ibuprofen if possible, because using it during a chickenpox infection may be associated with a higher risk of a severe skin infectionTrusted Source.', 2, 'Fever Tiredness Loss of appetite Headache Rash  Sore throat Muscle and Joint Pain, chickenpox', 'chickenpox', '', 3),
(9, 'Ice', 'To lessen pain, burning, or itch: Place ice on the cold sore or suck on ice chips. To lessen the pain: Take ibuprofen or acetaminophen. To avoid pain caused by foods: Some foods can cause burning if they touch a cold sore.', ' You can numb the pain if you apply a cold compress to the sore. Don’t put ice directly on your skin -- that could damage it', 3, 'Pain or discomfort Crusting Swelling and redness Itching or irritation Small, painful,fluid-filled blisters,cold sore', 'cold sore', '', 1),
(10, 'Pain relievers. ', 'Taking ibuprofen or acetaminophen can help reduce the pain and swelling, although this won\'t make the cold sore go away', 'When a cold sore really stings, you may get some relief from an over-the-counter painkiller like acetaminophen.', 3, 'Pain or discomfort Crusting Swelling and redness Itching or irritation Small, painful,fluid-filled blisters,cold sore', 'cold sore', '', 1),
(11, 'Prescription drugs.', 'If your cold sore is especially painful or irritating, your doctor may prescribe an anesthetic gel to alleviate pain or an antiviral oral medication to speed healing or prevent recurrence. The antiviral medicines available for treatment include acyclovir (Zovirax), famciclovir (Famvir), and valacyclovir (Valtrex).', ' Because cold sores are caused by a virus, doctors may suggest an antiviral medication to help you heal more quickly. The antiviral drugs used to treat cold sores include acyclovir (Zovirax), valacyclovir (Valtrex), famciclovir (Famvir), and penciclovir (Denavir).', 3, 'Pain or discomfort Crusting Swelling and redness Itching or irritation Small, painful,fluid-filled blisters,cold sore', 'cold sore', '', 1),
(12, 'Aloe vera gel.', 'Dabbing a bit of aloe vera on your cold sore a few times a day may ease your discomfort and help speed healing. You could keep it chilled in the refrigerator for an additional soothing sensation. One of the benefits of this cold sore treatment is that you do not have to worry if a little bit gets into your mouth.', ' The same gel used for sunburn may help a cold sore to heal. Lab research has shown the gel may help fight viruses, including herpes simplex.', 3, 'Pain or discomfort Crusting Swelling and redness Itching or irritation Small, painful,fluid-filled blisters,cold sore', 'cold sore', '', 1),
(13, 'Tea tree oil', 'Tea tree oil has antiviral, antiseptic, and anti-inflammatory properties that can come in handy when you need to treat a cold sore. One 2009 study found tea tree oil had a potentially antiviral effect on HSV', ' Some research has shown that this strong-smelling oil helps a cold sore heal more quickly.', 3, 'Pain or discomfort Crusting Swelling and redness Itching or irritation Small, painful,fluid-filled blisters,cold sore', 'cold sore', '', 1),
(14, 'Honey', 'With loads of antimicrobial properties, honey is not only heavenly for your taste buds but also helps ease sore throat. It is an effective cough suppressant. ', 'How it works\r\nHoney provides relief from chest congestion by loosening thick mucus and helping you to cough it out. This helps reduce wet cough. \r\nHow to take\r\nTake a teaspoonful of honey before going to bed at night to reduce the severity of cough. Continue till you do not get relief from cough.\r\n', 4, 'A Sore throat A Blocked or runny nose  Sneezing  A Cough,Common cold', 'common cold', 'Pranayam poses\r\nSun Salutation', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `email`, `rating`, `comment`) VALUES
(1, 'Anirudh Vardhman', 'anidigraj@gmail.com', 5, 'NICE INFORMATION'),
(2, 'Kartikey ', 'kartike@gmail.com', 4, 'YOU GUYS DONE WELL!'),
(7, 'Raman', 'Raman@gmail.com', 4, 'cool'),
(8, 'Harshal', 'Harshal@gmail.com', 5, 'TRY HARD\r\n'),
(10, 'roshani', 'roshani@gmail.com', 2, 'better\r\n'),
(11, 'Vinayak ', 'vinayak@gmail.com', 3, 'nice'),
(12, 'jgfjgfg', 'uyyhkhkh@gmail.com', 4, 'bvjhb\r\n'),
(13, 'jgfjgfg', 'uyyhkhkh@gmail.com', 4, 'bvjhb\r\n'),
(14, 'jgfjgfg', 'uyyhkhkh@gmail.com', 4, 'bvjhb\r\n'),
(15, 'jgfjgfg', 'uyyhkhkh@gmail.com', 4, 'bvjhb\r\n'),
(18, 'Prathamesh Pande', '1234@gmsil.com', 5, 'very good');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `role` varchar(225) NOT NULL,
  `search_history` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `role`, `search_history`) VALUES
(1, 'Anirudh Vardhman', 'anidigraj@gmail.com', 'Anirudh', 'users', ''),
(3, 'Raman Pinate', 'raman@gmail.com', 'Raman', 'users', ''),
(5, 'Admin', 'admin@gmail.com', 'admin', 'admin', ''),
(6, 'Roshani Surve', 'roshani@gmai.com', 'roshani', 'users', ''),
(14, 'Rutuja M\r\n', 'rutuja@gmail.com', 'rutuja', 'users', ''),
(15, 'Kartikey Singh', 'kartikey@gmail.com', 'kartik', 'users', ''),
(16, 'APSIT', 'apsit@gmail.com', 'apsit', 'users', ''),
(17, 'Kartikey Singh', 'kartikey1@gmail.com', '123456', 'users', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `health_con`
--
ALTER TABLE `health_con`
  ADD PRIMARY KEY (`health_id`);

--
-- Indexes for table `remedies`
--
ALTER TABLE `remedies`
  ADD PRIMARY KEY (`reme_id`),
  ADD KEY `health_id` (`health_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `health_con`
--
ALTER TABLE `health_con`
  MODIFY `health_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `remedies`
--
ALTER TABLE `remedies`
  MODIFY `reme_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `remedies`
--
ALTER TABLE `remedies`
  ADD CONSTRAINT `remedies_ibfk_2` FOREIGN KEY (`health_id`) REFERENCES `health_con` (`health_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
