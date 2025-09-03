import Mathlib

/-- If P ◁ G, P a p-Sylow subgroup of G, prove that φ(P) = P for every automorphism φ of G. -/
theorem automorphism_sylow_eq_self {G : Type*} [Group G] {p : ℕ} (P : Subgroup G)
  (hP_normal : Subgroup.Normal P) (hP_sylow : True) : ∀ φ : G ≃* G, Subgroup.map (MulEquiv.toMonoidHom φ) P = P := by sorry
