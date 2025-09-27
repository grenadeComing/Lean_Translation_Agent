import Mathlib

variable {G : Type _} [Group G]

/-- H is characteristic in K when H ≤ K and H is fixed by every group automorphism of K. -/
def IsCharacteristic (H K : Subgroup G) : Prop :=
  H ≤ K ∧ ∀ (e : (↥K) ≃* (↥K)) (x : ↥K), ((e x : G) ∈ (H : Set G)) ↔ ((x : G) ∈ (H : Set G))

/-- Exercise 4.4.8(a) (Dummit–Foote): If H ≤ K, H characteristic in K, and K ⫴ G, then H ⫴ G. -/
theorem Dummit_Foote_exercise_4_4_8a {H K : Subgroup G}
  (hHK : H ≤ K) (hchar : IsCharacteristic H K) (hKnormal : K.Normal) : H.Normal := by sorry
