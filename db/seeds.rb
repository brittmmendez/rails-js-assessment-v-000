User.create(email: "hello123@gmail.com", password: "please123")
User.create(email: "goodbye123@gmail.com", password: "please123")
User.create(email: "happy123@gmail.com", password: "please123")


Category.create(name: 'Upper Body')
Category.create(name: 'Lower Body')
Category.create(name: 'Total Body')
Category.create(name: 'Abs')

TrainingType.create(name: 'Strength Training')
TrainingType.create(name: 'Pilates')
TrainingType.create(name: 'Cardio')
TrainingType.create(name: 'Yoga')
TrainingType.create(name: 'Low Impact')
TrainingType.create(name: 'Kickboxing')
TrainingType.create(name: 'HIIT')

Equipment.create(name: 'Dumbbells')
Equipment.create(name: 'Medicine ball')
Equipment.create(name: 'Yoga Mat')
Equipment.create(name: 'Jump Rope')
Equipment.create(name: 'Yoga Ball')
Equipment.create(name: 'Resistance Bands')


# User 1:
Workout.create(
  name: "Strength Total Body",
  duration: 30,
  difficulty:2 ,
  description: "Time to get your strongest abs and your sleekest obliques! Today we are working on your core which includes all the muscles around your waistline! You don't need to go to the gym or pay for a membership when you can do all your workouts from home. These ab flattening, core sculpting, muffintop melting moves will show you the results you want.",
  website:"https://www.youtube.com/embed/wvau9wZ6_8k",
  photo: "/images/weight-lifting-1297690_960_720.png",
  views:350,
  category_id: 1,
  user_id:1 ,
  training_type_id: 1)

Workout.create(
  name: "Quick Pilates",
  duration: 5,
  difficulty:2 ,
  description: "This ab workout made me SO SORE but I was NOT SORRY as Demi Lovato would say! Guys, this is a hard core routine that will sculpt, tone, and tighten your upper abs, lower abs, midsection, and overall core. I'm put together some of my favorite ab exercises full of POP Pilates flair and I promise you that you will BURN so good!",
  website:"https://www.youtube.com/embed/4pcaD3wInqM",
  photo: "/images/6609676_orig.png",
  views: 500,
  category_id: 2,
  user_id:1 ,
  training_type_id: 2)

Workout.create(
  name: "Quick Cardio",
  duration: 10,
  difficulty:3 ,
  description: "Get ready because today we are working EVERYTHANGGG!! That’s right, I’ve got a challenging total body workout for you that will target everywhere - no equipment needed! We’re breaking it up into three sections. ",
  website:"https://www.youtube.com/embed/th-zqrT_Lqs",
  photo: "/images/logo-cardio.jpg",
  views: 500,
  category_id: 2,
  user_id:1 ,
  training_type_id: 3)

Workout.create(
  name: "Yoga",
  duration: 15,
  difficulty:2 ,
  description: "This is a REALLY intense butt and thighs workout that will sculpt your legs and booty! More importantly though, you will feel sooooo STRONG in your lower body. Your glutes will lift, your inner and outer thigh muscles will tone and slim down, while your heart rate will also rise!",
  website:"https://www.youtube.com/embed/QK72EKtdPkQ",
  photo: "/images/yoga-transparent.png",
  views: 50,
  category_id: 4,
  user_id:2 ,
  training_type_id: 4)

Workout.create(
  name: "Low Impact",
  duration: 20,
  difficulty:4 ,
  description: "Let this be the new 'Call Me Maybe Squats'! Guys it's time to shape and sculpt your thighs to Ed Sheeran's 'Shape of You'!",
  website:"https://www.youtube.com/embed/IjEBfs35HSc",
  photo: "/images/lowimpact-logo.png",
  views: 50,
  category_id: 4,
  user_id:2 ,
  training_type_id: 5)

Workout.create(
  name: "Kickboxing Quickie",
  duration: 25,
  difficulty:2 ,
  description: "Time to get your strongest abs and your sleekest obliques! Today we are working on your core which includes all the muscles around your waistline! You don't need to go to the gym or pay for a membership when you can do all your workouts from home. These ab flattening, core sculpting, muffintop melting moves will show you the results you want.",
  website:"https://www.youtube.com/embed/fKGmGhU6NNk",
  photo: "/images/boxing-kickboxing-logo.png",
  views: 50,
  category_id: 3,
  user_id:2 ,
  training_type_id: 6)

Workout.create(
  name: "Total Body HIIT",
  duration: 30,
  difficulty:5 ,
  description: "This ab workout made me SO SORE but I was NOT SORRY as Demi Lovato would say! Guys, this is a hard core routine that will sculpt, tone, and tighten your upper abs, lower abs, midsection, and overall core. I'm put together some of my favorite ab exercises full of POP Pilates flair and I promise you that you will BURN so good!",
  website:"https://www.youtube.com/embed/j7HnFtNmDl4",
  photo: "/images/HIIT-Logo.gif",
  views: 50 ,
  category_id: 3,
  user_id:3 ,
  training_type_id: 7)

#User 2
Workout.create(
  name: "Strength Upper Arms",
  duration: 35,
  difficulty: 2 ,
  description: "Get ready because today we are working EVERYTHANGGG!! That’s right, I’ve got a challenging total body workout for you that will target everywhere - no equipment needed! We’re breaking it up into three sections. ",
  website:"https://www.youtube.com/embed/pbQW9ZVpQHA",
  photo: "/images/weight-lifting-1297690_960_720.png",
  views:350,
  category_id: 1,
  user_id:3 ,
  training_type_id: 1)

Workout.create(
  name: "Beginner Pilates",
  duration: 40,
  difficulty:3 ,
  description: "This is a REALLY intense butt and thighs workout that will sculpt your legs and booty! More importantly though, you will feel sooooo STRONG in your lower body. Your glutes will lift, your inner and outer thigh muscles will tone and slim down, while your heart rate will also rise!",
  website:"https://www.youtube.com/embed/cF0niVnmMY0",
  photo: "/images/6609676_orig.png",
  views: 500,
  category_id: 2,
  user_id:3 ,
  training_type_id: 2)

Workout.create(
  name: "Cardio 30 Min",
  duration: 45,
  difficulty:3 ,
  description: "Let this be the new 'Call Me Maybe Squats'! Guys it's time to shape and sculpt your thighs to Ed Sheeran's 'Shape of You'!",
  website:"https://www.youtube.com/embed/hxjKZcOT17E",
  photo: "/images/logo-cardio.jpg",
  views: 500,
  category_id: 2,
  user_id:1 ,
  training_type_id: 3)

Workout.create(
  name: "Morning Yoga",
  duration: 50,
  difficulty:2 ,
  website:"https://www.youtube.com/embed/3eFn13DPhS4",
  description: "Time to get your strongest abs and your sleekest obliques! Today we are working on your core which includes all the muscles around your waistline! You don't need to go to the gym or pay for a membership when you can do all your workouts from home. These ab flattening, core sculpting, muffintop melting moves will show you the results you want.",
  photo: "/images/yoga-transparent.png",
  views: 50,
  category_id: 4,
  user_id:2 ,
  training_type_id: 4)

Workout.create(
  name: "Stretching",
  duration: 55,
  difficulty:3 ,
  description: "This ab workout made me SO SORE but I was NOT SORRY as Demi Lovato would say! Guys, this is a hard core routine that will sculpt, tone, and tighten your upper abs, lower abs, midsection, and overall core. I'm put together some of my favorite ab exercises full of POP Pilates flair and I promise you that you will BURN so good!",
  website:"https://www.youtube.com/embed/oudLZLcA3Gs",
  photo: "/images/lowimpact-logo.png",
  views: 550,
  category_id: 3,
  user_id:3 ,
  training_type_id: 5)

Workout.create(
  name: "Kickboxing Total Body",
  duration: 30,
  difficulty:2 ,
  description: "Get ready because today we are working EVERYTHANGGG!! That’s right, I’ve got a challenging total body workout for you that will target everywhere - no equipment needed! We’re breaking it up into three sections. ",
  website:"https://www.youtube.com/embed/LebPal5gKrc",
  photo: "/images/boxing-kickboxing-logo.png",
  views: 600,
  category_id: 3,
  user_id:1 ,
  training_type_id: 6)

Workout.create(
  name: "HIIT Legs",
  duration: 35,
  difficulty:2 ,
  website:"https://www.youtube.com/embed/tfTCykKtE7M",
  photo: "/images/HIIT-Logo.gif",
  views: 700,
  description: "This ab workout made me SO SORE but I was NOT SORRY as Demi Lovato would say! Guys, this is a hard core routine that will sculpt, tone, and tighten your upper abs, lower abs, midsection, and overall core. I'm put together some of my favorite ab exercises full of POP Pilates flair and I promise you that you will BURN so good!",
  category_id: 1,
  user_id:2 ,
  training_type_id: 7)
