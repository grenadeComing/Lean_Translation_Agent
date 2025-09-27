import Mathlib

variable {G : Type*} [Group G] {p : ℕ} (P : Subgroup G)

/-- If P ◁ G and P is a p-Sylow subgroup of G, then every automorphism of G fixes P. -/
theorem sylow_normal_fixed (hP : IsSylow p P) (hnormal : P.normal) (φ : G ≃* G) :
  P.map (φ.toMonoidHom) = P := by sorry
