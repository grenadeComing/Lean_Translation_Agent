import Mathlib

/-!
If P is a p-Sylow subgroup of G and P is the unique such Sylow subgroup (equivalently P is normal),
then every automorphism of G maps P to itself.
-/

variable {G : Type*} [Group G]

open MulEquiv

theorem Herstein_exercise_2_11_7 {p : ℕ} (P : Sylow p G)
  (h_unique : ∀ Q : Sylow p G, Q = P) (φ : G ≃* G) :
  Subgroup.map (φ.toMonoidHom : G →* G) P.toSubgroup = P.toSubgroup := by sorry
