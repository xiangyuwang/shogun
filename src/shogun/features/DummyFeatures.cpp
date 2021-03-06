#include <shogun/features/DummyFeatures.h>
#include <shogun/base/Parameter.h>

using namespace shogun;

CDummyFeatures::CDummyFeatures()
{
	init();
	num_vectors = 0;
}

CDummyFeatures::CDummyFeatures(int32_t num) : CFeatures(0), num_vectors(num)
{
	init();
}

CDummyFeatures::CDummyFeatures(const CDummyFeatures &orig) : CFeatures(0),
	num_vectors(orig.num_vectors)
{
	init();
}

CDummyFeatures::~CDummyFeatures()
{
}

int32_t CDummyFeatures::get_num_vectors() const
{
	return num_vectors;
}

int32_t CDummyFeatures::get_size()
{
	return 1;
}

CFeatures* CDummyFeatures::duplicate() const
{
	return new CDummyFeatures(*this);
}

inline EFeatureType CDummyFeatures::get_feature_type()
{
	return F_ANY;
}

EFeatureClass CDummyFeatures::get_feature_class()
{
	return C_ANY;
}

void CDummyFeatures::init()
{
	m_parameters->add(&num_vectors, "num_vectors",
			"Number of feature vectors.");
}
