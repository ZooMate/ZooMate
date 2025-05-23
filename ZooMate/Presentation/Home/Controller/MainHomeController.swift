//
//  MainHomeController.swift
//  ZooMate
//
//  Created by Song Kim on 5/23/25.
//

import SwiftUI

class MainHomeController: ObservableObject {
    let dummyPets: [Pet] = [
        Pet(petId: "1", petName: "미미", age: 3, gender: .female, isNeutering: true, isPublic: true, breed: "페르시안", weight: 4.2, tag: ["온순함", "낮잠 좋아함"], photos: ["https://placekitten.com/300/300"], category: .cat, ownerId: "user1"),
        Pet(petId: "2", petName: "콩이", age: 2, gender: .male, isNeutering: false, isPublic: false, breed: "푸들", weight: 5.0, tag: ["활발함", "산책 좋아함"], photos: ["https://images.dog.ceo/breeds/poodle-toy/n02113624_9550.jpg"], category: .dog, ownerId: "user2"),
        Pet(petId: "3", petName: "짹짹이", age: 1, gender: .male, isNeutering: false, isPublic: true, breed: "잉꼬", weight: 0.08, tag: ["수다쟁이", "노래 잘함"], photos: ["https://farm4.staticflickr.com/3075/3168662394_7d7103de7d_z_d.jpg"], category: .bird, ownerId: "user3"),
        Pet(petId: "4", petName: "초코", age: 4, gender: .female, isNeutering: true, isPublic: true, breed: "닥스훈트", weight: 6.3, tag: ["애교많음", "소심함"], photos: ["https://images.dog.ceo/breeds/dachshund/n02085782_1100.jpg"], category: .dog, ownerId: "user4"),
        Pet(petId: "5", petName: "냥이", age: 5, gender: .female, isNeutering: true, isPublic: false, breed: "코리안숏헤어", weight: 3.7, tag: ["도도함"], photos: ["https://placekitten.com/301/301"], category: .cat, ownerId: "user5"),
        Pet(petId: "6", petName: "루비", age: 2, gender: .female, isNeutering: false, isPublic: true, breed: "비숑프리제", weight: 4.9, tag: ["사교적임", "장난기많음"], photos: ["https://images.dog.ceo/breeds/bichon/n02085936_10073.jpg"], category: .dog, ownerId: "user6"),
        Pet(petId: "7", petName: "해피", age: 1, gender: .male, isNeutering: false, isPublic: true, breed: "골든리트리버", weight: 10.0, tag: ["충성심", "운동좋아함"], photos: ["https://images.dog.ceo/breeds/retriever-golden/n02099601_3004.jpg"], category: .dog, ownerId: "user7"),
        Pet(petId: "8", petName: "소라", age: 3, gender: .female, isNeutering: true, isPublic: true, breed: "샴", weight: 3.5, tag: ["호기심많음"], photos: ["https://placekitten.com/302/302"], category: .cat, ownerId: "user8"),
        Pet(petId: "9", petName: "쿠쿠", age: 1, gender: .male, isNeutering: false, isPublic: false, breed: "앵무새", weight: 0.12, tag: ["말 많음", "밝은 성격"], photos: ["https://farm4.staticflickr.com/3075/3168662394_7d7103de7d_z_d.jpg"], category: .bird, ownerId: "user9"),
        Pet(petId: "10", petName: "슬기", age: 6, gender: .female, isNeutering: true, isPublic: true, breed: "시베리안 허스키", weight: 20.0, tag: ["지능높음", "활동적"], photos: ["https://images.dog.ceo/breeds/husky/n02110185_1469.jpg"], category: .dog, ownerId: "user10"),
        Pet(petId: "11", petName: "토리", age: 2, gender: .male, isNeutering: true, isPublic: true, breed: "코커스패니얼", weight: 7.5, tag: ["친근함", "장난꾸러기"], photos: ["https://images.dog.ceo/breeds/cocker-spaniel/n02102318_1000.jpg"], category: .dog, ownerId: "user11"),
        Pet(petId: "12", petName: "하늘", age: 3, gender: .female, isNeutering: false, isPublic: true, breed: "러시안블루", weight: 4.0, tag: ["조용함", "우아함"], photos: ["https://placekitten.com/303/303"], category: .cat, ownerId: "user12"),
        Pet(petId: "13", petName: "밤비", age: 1, gender: .female, isNeutering: false, isPublic: true, breed: "치와와", weight: 2.5, tag: ["작고 귀여움"], photos: ["https://images.dog.ceo/breeds/chihuahua/n02085620_10074.jpg"], category: .dog, ownerId: "user13"),
        Pet(petId: "14", petName: "구름", age: 4, gender: .male, isNeutering: true, isPublic: false, breed: "샤페이", weight: 8.0, tag: ["주름많음", "충성심"], photos: ["https://images.dog.ceo/breeds/sharpei/n02085782_1006.jpg"], category: .dog, ownerId: "user14"),
        Pet(petId: "15", petName: "별이", age: 2, gender: .female, isNeutering: true, isPublic: true, breed: "스코티시폴드", weight: 3.2, tag: ["귀접힘", "온순함"], photos: ["https://placekitten.com/304/304"], category: .cat, ownerId: "user15"),
        Pet(petId: "16", petName: "탄이", age: 3, gender: .male, isNeutering: false, isPublic: true, breed: "시바이누", weight: 9.0, tag: ["독립적", "활발함"], photos: ["https://images.dog.ceo/breeds/shiba/n02085782_1006.jpg"], category: .dog, ownerId: "user16"),
        Pet(petId: "17", petName: "몽이", age: 5, gender: .female, isNeutering: true, isPublic: true, breed: "믹스견", weight: 6.0, tag: ["다정함", "순함"], photos: ["https://images.dog.ceo/breeds/mix/n02110185_1469.jpg"], category: .dog, ownerId: "user17"),
        Pet(petId: "18", petName: "라라", age: 2, gender: .female, isNeutering: false, isPublic: true, breed: "아메리칸숏헤어", weight: 3.8, tag: ["활발함", "사교적"], photos: ["https://placekitten.com/305/305"], category: .cat, ownerId: "user18"),
        Pet(petId: "19", petName: "보리", age: 4, gender: .male, isNeutering: true, isPublic: false, breed: "말티즈", weight: 4.5, tag: ["애교많음", "소형견"], photos: ["https://images.dog.ceo/breeds/maltese/n02085936_10073.jpg"], category: .dog, ownerId: "user19"),
        Pet(petId: "20", petName: "하니", age: 3, gender: .female, isNeutering: true, isPublic: true, breed: "벵갈", weight: 4.0, tag: ["활동적", "호기심많음"], photos: ["https://placekitten.com/306/306"], category: .cat, ownerId: "user20")
    ]

}
