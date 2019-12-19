import os
from django.contrib.contenttypes.fields import GenericForeignKey, GenericRelation
from django.contrib.contenttypes.models import ContentType
from django.contrib.sites.models import Site
from django.db import models
from django.utils import timezone


# Choose color for site
SITE_COLORS = (
    ('primary', '青色'),
    ('secondary', '灰色'),
    ('success', '緑色'),
    ('info', '水色'),
    ('warning', '黄色'),
    ('danger', '赤'),
    ('dark', '黒'),
)

DEFAULT_HEADER_TEXT = """\
Ký Sự Nhật Bản
"""
#[filter url]https://www.linkedin.com/in/trinh-nguyen-huu-8b6079104/<split>Hồ sơ Linkedin[end]\

class Category(models.Model):
    """Category"""
    name = models.CharField('CategoryName', max_length=255)

    def __str__(self):
        """str."""
        return self.name


class Tag(models.Model):
    """Tag"""
    name = models.CharField('TagName', max_length=255)

    def __str__(self):
        """str."""
        return self.name


class Post(models.Model):
    """Article"""
    title = models.CharField('Title', max_length=255)
    text = models.TextField('Body')
    category = models.ForeignKey(
        Category, verbose_name='Category', on_delete=models.PROTECT)
    tag = models.ManyToManyField(Tag, blank=True, verbose_name='Tag')
    thumnail = models.ImageField(
        'Thumbnail', upload_to='post_thumbnail/%Y/%m/%d/', blank=True, null=True)
    is_publick = models.BooleanField('Publicable?', default=True)
    friend_posts = models.ManyToManyField(
        'self', verbose_name='RelatedArticle', blank=True)
    description = models.TextField('Description', blank=True)
    files = GenericRelation('File')
    created_at = models.DateTimeField('CreatedDate', default=timezone.now)

    def __str__(self):
        return self.title

    def get_description(self):
        if self.description:
            return self.description
        else:
            description = 'Category:{0} Tag:{1}'
            category = self.category
            tags = ' '.join(tag.name for tag in self.tag.all())
            description = description.format(category, tags)
            return description

    def get_next(self):
        """Get next article (datetime)

        Not good at performance
        """
        next_post = Post.objects.filter(
            is_publick=True, created_at__gt=self.created_at
        ).order_by('-created_at')
        if next_post:
            return next_post.last()
        return None

    def get_prev(self):
        """Get previous article (datetime)

        Not good at performance
        """
        prev_post = Post.objects.filter(
            is_publick=True, created_at__lt=self.created_at
        ).order_by('-created_at')
        if prev_post:
            return prev_post.first()
        return None


class Comment(models.Model):
    """Comment"""
    name = models.CharField('Name', max_length=255, default='UnName')
    text = models.TextField('Comment')
    icon = models.ImageField(
        'Thumbnail', upload_to='comment_thumbnail/%Y/%m/%d/', blank=True, null=True)
    target = models.ForeignKey(
        Post, on_delete=models.CASCADE, verbose_name='TargetArticle')
    files = GenericRelation('File')
    created_at = models.DateTimeField('CreatedDate', default=timezone.now)

    def __str__(self):
        return self.text[:10]

    def get_filename(self):
        """Get filename"""
        return os.path.basename(self.file.url)


class ReComment(models.Model):
    """Reply comment"""
    name = models.CharField('Name', max_length=255, default='UnName')
    text = models.TextField('Comment')
    icon = models.ImageField(
        'Thumbnail', upload_to='recomment_thumbnail/%Y/%m/%d//', blank=True, null=True)
    target = models.ForeignKey(
        Comment, on_delete=models.CASCADE, verbose_name='TargetArticle')
    files = GenericRelation('File')
    created_at = models.DateTimeField('CreatedDate', default=timezone.now)

    def __str__(self):
        return self.text[:10]

    def get_filename(self):
        """Get filename"""
        return os.path.basename(self.file.url)


class Link(models.Model):
    """Link"""
    name = models.CharField('LinkName', max_length=255)
    adrs = models.CharField('Address', max_length=255)

    def __str__(self):
        return self.name


class Analytics(models.Model):
    """Analytic information"""
    name = models.CharField('Analytic', max_length=255, blank=True)
    html = models.TextField('AnalyticHtml', blank=True)

    def __str__(self):
        return self.name


class Ads(models.Model):
    """AdsRelated"""
    name = models.CharField('AdsName', max_length=255, blank=True)
    html = models.TextField('AdsHtml', blank=True)

    def __str__(self):
        return self.name


class SiteDetail(models.Model):
    """Site detail information"""
    site = models.OneToOneField(Site, verbose_name='Site', on_delete=models.PROTECT)
    title = models.CharField('Title', max_length=255, default='Huutrinh\'s blog')
    header_text = models.TextField('HeaderText', max_length=255, default=DEFAULT_HEADER_TEXT)
    description = models.TextField('Description', max_length=255, default='Description')
    author = models.CharField('Author', max_length=255, default='Huutrinh')
    author_mail = models.EmailField('AuthorMail', max_length=255, default='trinhsp89@gmail.com')
    color = models.CharField('Color', choices=SITE_COLORS, default='primary', max_length=30)

    def __str__(self):
        return self.author


class PopularPost(models.Model):
    """Popular post"""
    title = models.CharField('Title', max_length=255)
    url = models.CharField('URL', max_length=255)
    page_view = models.IntegerField('PageView')

    def __str__(self):
        return '{0} - {1} - {2}'.format(
            self.url, self.title, self.page_view)


class Image(models.Model):
    """Image file related to article"""
    title = models.CharField('Title', max_length=255, blank=True)
    post = models.ForeignKey(
        Post, verbose_name='Article', on_delete=models.PROTECT,
    )
    src = models.ImageField('Image', upload_to='images/%Y/%m/%d/', help_text='Save after sending.')
    created_at = models.DateTimeField('CreatedDate', default=timezone.now)

    def __str__(self):
        return 'Indirect Link:[filter imgpk]{0}[end] Direct link:[filter img]{1}[end]'.format(self.pk, self.src.url)


class File(models.Model):
    """File related to article and comment"""
    title = models.CharField('Titile', max_length=255, blank=True)
    src = models.FileField('TempFile', upload_to='files/%Y/%m/%d/')
    content_type = models.ForeignKey(ContentType, on_delete=models.CASCADE)
    object_id = models.PositiveIntegerField()
    content_object = GenericForeignKey('content_type', 'object_id')
    created_at = models.DateTimeField('CreatedDate', default=timezone.now)

    def __str__(self):
        return 'Model:{} pk:{} url:{}'.format(self.content_type, self.object_id, self.src.url)

    def get_filename(self):
        """Get filename"""
        return os.path.basename(self.src.url)
