import Mathlib

open scoped BigOperators

variable {R : Type*} {G : Type*} [Semiring R] [Group G] [Fintype G]

/-- The sum of all group elements considered as elements of the group ring `MonoidAlgebra R G`. -/
noncomputable def N : MonoidAlgebra R G := ∑ g : G, MonoidAlgebra.of R G g

theorem Dummit_Foote_exercise_7_2_12 : ∀ a : MonoidAlgebra R G, N * a = a * N := by sorry
