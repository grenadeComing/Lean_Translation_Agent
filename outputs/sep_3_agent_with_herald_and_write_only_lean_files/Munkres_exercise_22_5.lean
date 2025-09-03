import Mathlib

open Set

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]

/-- Given p : X → Y and an open set A ⊆ X, the restriction q : A → p '' A is the map sending a ↦ p a. -/
def restrict_map (p : X → Y) (A : Set X) (hA : IsOpen A) : A → p '' A :=
  fun a => ⟨p a, ⟨a, a.2, rfl⟩⟩

/-- If p is an open map and A is open in X, then the restriction q : A → p '' A is an open map. -/
theorem restrict_map_is_open (p : X → Y) (hp : ∀ U : Set X, IsOpen U → IsOpen (p '' U)) {A : Set X} (hA : IsOpen A) :
  ∀ U : Set A, IsOpen U → IsOpen ((restrict_map p A hA) '' U : Set (p '' A)) := by sorry
