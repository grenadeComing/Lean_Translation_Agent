import Mathlib

variable {G : Type*} [Group G]
variable {H K : Subgroup G}

/-- If H ≤ K, H is characteristic in K, and K is normal in G, then H is normal in G. -/
theorem Dummit_Foote_exercise_4_4_8a (hHK : H ≤ K)
  (hchar : ∀ g : G, (∀ k : G, k ∈ K → g * k * g⁻¹ ∈ K) → (∀ h : G, h ∈ H → g * h * g⁻¹ ∈ H))
  (hnormal : ∀ g : G, ∀ k : G, k ∈ K → g * k * g⁻¹ ∈ K) :
  ∀ g : G, ∀ h : G, h ∈ H → g * h * g⁻¹ ∈ H := by
  intro g h hh
  apply hchar g (hnormal g) h hh
  
#exit